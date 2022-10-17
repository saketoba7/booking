class Room < ApplicationRecord
    belongs_to :user
    has_many :reservations

    mount_uploader :image, ImageUploader
    validates :room_price, presence: true
    validates :room_address, presence: true
    validates :room_content, presence: true
    validates :room_name, presence: true
    
end
