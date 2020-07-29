class Booking < ApplicationRecord
  belongs_to :sport
  belongs_to :facility
  belongs_to :user
  belongs_to :timeslot
  validates :date, presence: true
  validate :date_cannot_be_in_the_past

  def date_cannot_be_in_the_past
    if date.present? && date < Date.today
      errors.add(:date, "Cannot be in the Past")
    end
  end
end
