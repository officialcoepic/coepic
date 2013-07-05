class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :penname
      t.string :email
      t.text :writeup
      t.text :about
      t.text :goals
      t.references :group
      t.references :book
      t.timestamps
    end
  end
end
