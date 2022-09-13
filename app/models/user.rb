class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthabl
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, presence: true, length: { maximum: 15 }
  validates :profile, presence: true, length: { maximum: 50 }
 
  mount_uploader :image, ImageUploader
end
