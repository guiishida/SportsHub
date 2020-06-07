class Booking < ApplicationRecord
  belongs_to :sport
  belongs_to :facility
  belongs_to :user
  belongs_to :timeslot
end
