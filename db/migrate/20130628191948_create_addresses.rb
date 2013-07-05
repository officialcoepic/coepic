class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :line1
      t.string :line2
      t.string :city
      t.string :state
      t.integer :zip_code
      t.references :author
      t.timestamps
    end
  end
end
