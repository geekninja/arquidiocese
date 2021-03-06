class CreateCmsPages < ActiveRecord::Migration
  def change
    create_table :cms_pages do |t|
      t.string :title
      t.text :resume
      t.text :content
      t.boolean :publish
      t.string :thumbnail
      t.boolean :thumbnail_active
      t.references :page_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
