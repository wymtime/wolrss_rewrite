load 'opengraph.rb'

class Feed < ApplicationRecord
  #validates :title, :url, presence: true

  has_many :entries, -> { order "published_at DESC" }, dependent: :destroy
  has_many :user_feeds
  has_many :users, through: :user_feeds

  belongs_to :category

  def reload
    xml = fetch(self.url)
    feed_data = Feedjira::Feed.parse(xml)

    if feed_data.is_a?(Fixnum)
      return nil
    end

    self.updated_at = Time.now
    self.save!

    existing_entry_urls = Entry.pluck(:url).sort

    feed_data.entries.each do |entry_data|
      unless existing_entry_urls.include?(entry_data.url)
        self.add_entry!(entry_data, self.id)
      end
    end
  end

  def self.find_or_create_by_url(url, image_url, cat_id)
    feed = Feed.find_by_url(url)
    return feed if !feed.nil?

    feed_data = Feedjira::Feed.fetch_and_parse(url)

    if feed_data.is_a?(Fixnum)
      return nil
    end

    feed = Feed.new(title: feed_data.title,
                    url: feed_data.feed_url,
                    image: image_url,
                    category_id: cat_id)

    feed.save

    0.upto(feed_data.entries.length - 1) do |index|
      feed.add_entry!(feed_data.entries[index], feed.id)
    end

    return feed
  end

  def self.add_entry(entry, feed_id)
    add_entry!(entry, feed_id)
  end

  def add_entry!(entry, feed_id)
    new_entry = Entry.new()
    new_entry.url = entry.url
    new_entry.title = entry.title
    new_entry.feed_id = feed_id
    new_entry.published_at = entry.published

    og = OpenGraph.fetch(entry.url)

    #if open graph object exists / is not false
    if og
      new_entry.image = og.image
      new_entry.summary = og.description
    else
      #set attrs to shitty defaults
      new_entry.image =
        (entry.respond_to?(:image) && entry.image) || Feed.find(feed_id).image

        # || find_image(entry.summary)
      new_entry.summary = entry.summary
    end

    new_entry.save!
  end

  #finds an image url if it exists and returns it
  def find_image(data)
    tags = Nokogiri::HTML(data)
    imgs = tags.css('img').map { |i| i['src'] }
    imgs.each do |img|
      if (img.include?(".jpg") || img.include?(".png"))
        return img
      end
    end
    return nil
  end

  def fetch(url)
    conn = Faraday.new(:url => url) do |faraday|
      faraday.use FaradayMiddleware::FollowRedirects, limit: 3
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get url
    return response.body
  end
end
