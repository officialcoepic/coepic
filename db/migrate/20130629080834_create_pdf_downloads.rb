class CreatePdfDownloads < ActiveRecord::Migration
  def change
    create_table :pdf_downloads do |t|
      t.integer :noofclick
      t.references :book
      t.timestamps
    end
  end
end
