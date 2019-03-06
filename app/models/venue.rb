class Venue < ApplicationRecord
  belongs_to :location
  has_many :performances
  has_many :musicians, through: :performances
  has_secure_password
  validates :username, :email, :password, presence: true
  validates :email, :username, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
end
