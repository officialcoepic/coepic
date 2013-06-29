class CreateBookCoverImages < ActiveRecord::Migration
  def change
    create_table :book_cover_images do |t|
      t.string :bookurl

      t.timestamps
    end
  end
end
