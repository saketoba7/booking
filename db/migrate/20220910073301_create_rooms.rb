class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :title
      t.text :body
      t.integer :user_id
      t.integer :room_price
      t.datetime :start_day
      t.datetime :finish_day
      t.string :room_address
      t.references :users, null: false, foreign_key: true 

      t.timestamps
    end
  end
end
