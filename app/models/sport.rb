class Sport < ApplicationRecord
    has_many :facilities
    validates :name, presence: true
    validates :code, presence: true, uniqueness: true
end
