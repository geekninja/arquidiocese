class CreateCmsPosts < ActiveRecord::Migration
  def change
    create_table :cms_posts do |t|
      t.string :title
      t.string :resume
      t.string :content
      t.date :date
      t.boolean :publish
      t.boolean :slider
      t.string :thumb
      t.boolean :thumb_active
      t.references :post_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end