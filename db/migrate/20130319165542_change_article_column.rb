class ChangeArticleColumn < ActiveRecord::Migration
  def change
    rename_column :articles, :description, :content
  end
end
