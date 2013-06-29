class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.integer :cost
      t.text :description

      t.timestamps
    end
  end
end
