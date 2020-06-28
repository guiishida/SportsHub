class Team < ApplicationRecord
  validates :teamname, presence: true
  validates :date, presence: true
  validates :schedulemin, presence: true
  validates :schedulemax, presence: true
  validates :sport, presence: true
  validates :people, presence: true
end
