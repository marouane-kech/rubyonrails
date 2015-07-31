class RenameTagColumnToContent < ActiveRecord::Migration
  def self.up
    rename_column :tags, :tag, :content
  end

  def self.down
  end
end
