class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
