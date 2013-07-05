class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
      t.text :content
      t.timestamp :timeofthedraft
      t.integer :ithupload

      t.references :book
      t.timestamps
    end
  end
end
