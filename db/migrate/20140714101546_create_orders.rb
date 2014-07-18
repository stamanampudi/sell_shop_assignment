class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :p_id
      t.integer :ph_no
      t.text :adress

      t.timestamps
    end
  end
end
