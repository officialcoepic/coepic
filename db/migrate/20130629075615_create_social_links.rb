class CreateSocialLinks < ActiveRecord::Migration
  def change
    create_table :social_links do |t|
      t.string :facebook
      t.string :twitter
      t.string :wordpress
      t.string :other
      t.references :author
      t.timestamps
    end
  end
end
