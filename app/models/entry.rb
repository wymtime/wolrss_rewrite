class Entry < ApplicationRecord
  validates :title, :url, :feed_id, presence: true

  belongs_to :feed
end
