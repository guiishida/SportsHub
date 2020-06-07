class Timeslot < ApplicationRecord
    has_many :bookings
    has_many :facilities
end
