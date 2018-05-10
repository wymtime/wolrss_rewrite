json.extract! category, :id, :title
json.feeds category.feeds, partial: 'api/feeds/feed', as: :feed
