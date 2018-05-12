json.extract! feed, :id, :title, :url, :created_at, :updated_at, :image, :category_id
json.entries feed.entries.limit(60).order(:id), partial: 'api/entries/entry', as: :entry
