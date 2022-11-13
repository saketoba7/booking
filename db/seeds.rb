# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

30.times do |n|
  room_address = Gimei.prefecture.kanji
      room = Room.create!(
        room_name: "sample_name",
        room_price: "5000",
        room_address: room_address,
        room_content: "安い",
        start_day: "2022-11-02 00:00:00",
        end_day: "2022-11-05 00:00:00",
        image: File.open('./app/assets/images/room01.jpg'),
        created_at:          "2022-11-01 00:00:00",
        updated_at:          "2022-11-01 00:00:00",
        user_id: "1"
  )
  end