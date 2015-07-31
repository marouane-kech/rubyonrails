class RenameColunmArticle < ActiveRecord::Migration
  def self.up
    rename_column :articles, :title, :titre
    rename_column :articles, :content, :contenu
  end

  def self.down
  end
end
