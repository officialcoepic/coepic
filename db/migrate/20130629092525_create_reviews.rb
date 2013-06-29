class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.timestamp :timeofthereview

      t.timestamps
    end
  end
end
