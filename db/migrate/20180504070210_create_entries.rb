class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :url, null: false
      t.string :title, null: false
      t.datetime :published_at, null: false
      t.integer :feed_id, null: false
      t.string :image, null: false
      t.text :summary, null: false

      t.timestamps
    end

    add_index :entries, :feed_id
    add_index :entries, :url, unique: true
  end
end
