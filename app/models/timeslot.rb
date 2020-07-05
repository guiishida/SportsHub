class Timeslot < ApplicationRecord
    has_many :bookings
    has_many :facilities

    validates :code, presence: true
    validates :weekday, presence: true
    validates :start_time, presence: true
    validates :end_time, presence: true
end
