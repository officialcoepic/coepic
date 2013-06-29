class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.string :name
      t.text :context

      t.timestamps
    end
  end
end
