class CreateAuthorImages < ActiveRecord::Migration
  def change
    create_table :author_images do |t|
      t.string :imageurl

      t.timestamps
    end
  end
end
