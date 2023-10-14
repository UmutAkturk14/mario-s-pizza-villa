class AddArchivedToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :archived, :boolean, default: false
  end
end
