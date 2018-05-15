class RemoveIndexFromEntryUrl < ActiveRecord::Migration[5.2]
  def change
    remove_index :entries, name: "index_entries_on_url"
  end
end
