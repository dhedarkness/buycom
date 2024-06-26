class CreateOrderDetails < ActiveRecord::Migration[7.2]
  def change
    create_table :order_details do |t|
      t.datetime :order_date, null: false
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end

    add_index :order_details, [:user_id, :product_id], unique: true, name: 'unique_order_details_index'
  end
end
