class CreateFormats < ActiveRecord::Migration
  def change
    create_table :formats do |t|
      t.string :pdf
      t.string :kindle
      t.string :epub

      t.timestamps
    end
  end
end
