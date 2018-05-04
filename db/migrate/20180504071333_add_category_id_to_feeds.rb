class AddCategoryIdToFeeds < ActiveRecord::Migration[5.2]
  def change
    add_column :feeds, :category_id, :integer

    add_index :feeds, :category_id
  end
end
