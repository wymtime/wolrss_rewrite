class RemoveNullFromSomeEntryColumns < ActiveRecord::Migration[5.2]
  def change
    change_column :entries, :published_at, :datetime, :null => true
    change_column :entries, :image, :string, :null => true
    change_column :entries, :summary, :text, :null => true
  end
end
