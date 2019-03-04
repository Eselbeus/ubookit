class Musician < ApplicationRecord
  has_many :performances
  has_many :venues, through: :performances
  has_secure_password
end
