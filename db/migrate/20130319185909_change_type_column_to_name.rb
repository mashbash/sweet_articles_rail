class ChangeTypeColumnToName < ActiveRecord::Migration
  def change
    rename_column :tags, :type, :name
    rename_column :categories, :type, :name
  end
end
