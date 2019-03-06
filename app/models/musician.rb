class Musician < ApplicationRecord
  has_many :performances
  has_many :venues, through: :performances
  has_secure_password
  validates :name, :email, :band_name, :password, presence: true
  validates :email, :band_name, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
end
