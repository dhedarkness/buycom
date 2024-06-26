class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :user_name, null: false
      t.string :email, null: false
      t.string :phone_number, null: false

      t.timestamps
    end
    add_index :users, :user_name, unique: true
    add_index :users, :email, unique: true
    add_index :users, :phone_number, unique: true

  end
end
