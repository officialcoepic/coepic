class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :chapter
      t.text :chaptercontent

      t.references :book
      t.timestamps
    end
  end
end
