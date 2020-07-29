class Facility < ApplicationRecord
  belongs_to :sport
  validates :name, presence: true
  validates :mode, presence: true
end
