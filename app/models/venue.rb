class Venue < ApplicationRecord
  belongs_to :location
  has_many :bookings
  has_many :performances
  has_many :musicians, through: :performances
  has_secure_password
  validates :username, :email, :password, presence: true
  validates :email, :username, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

  def rating_update(rating_from_musician)
    sum = self.rating + rating_from_musician
    avg = sum / 2
    self.rating = avg
    #updates rating
    @time = DateTime.now.advance(:weeks => +4)
    #updates @time
  end

  def recover_rating
    if @time.to_date.past? && self.rating < 3.0
      self.rating += 0.1
      @time = DateTime.now.advance(:weeks => +4)
    end
  end

end
