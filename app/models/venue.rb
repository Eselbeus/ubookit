class Venue < ApplicationRecord
  belongs_to :location
  has_many :performances
  has_many :musicians, through: :performances
  has_secure_password
end
