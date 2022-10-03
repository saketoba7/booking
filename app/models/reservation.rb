class Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :room

    validates :start_date, presence:true
    validates :end_date, presence: true
    validates :num_people, presence: true, numericality: { greater_than_or_equal_to: 1, less_than: 20 }
    
  
end
