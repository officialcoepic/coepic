class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :bitcoin
      t.string :paypal
      t.string :account

      t.timestamps
    end
  end
end
