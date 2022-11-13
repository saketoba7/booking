class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.integer :room_price
      t.datetime :start_day
      t.datetime :end_day
      t.string :room_address
      t.text :room_content
      t.string :image

      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
