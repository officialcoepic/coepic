class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :name
      t.integer :nooftag

      t.references :book
      t.timestamps
    end
  end
end
