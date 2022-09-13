class Room < ApplicationRecord
    

    validates :room_name, presence: true
    validates :room_PR, presence: true
    validates :room_price, presence: true
    validates :room_address, presence: true

    mount_uploader  :images ,ImagesUploader
end
