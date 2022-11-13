

class Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :room

    validates :start_date, presence:true
    validates :end_date, presence: true
    validates :num_people, presence: true, numericality: { greater_than_or_equal_to: 1, less_than: 20 }
    validate :start_end_check
   
    def start_end_check
      unless end_date == nil &&  start_date == nil
        errors.add(:end_date, "終了時刻は開始時刻より遅い時間を選択してください") if self.start_date > self.end_date
      end
    end
end
