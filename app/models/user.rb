class User < ApplicationRecord

  has_many :bookings
  has_many :teams

  validates :name, presence: true
  validates :telephone, presence: true
  validates :numeroUSP, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
