class Musician < ApplicationRecord
  has_many :performances
  has_many :venues, through: :performances
  has_secure_password
  validates :name, :email, :band_name, :password, presence: true
  validates :email, :band_name, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
end

def performances_number
  self.performances.length
end

def rating_eligible?
  if self.rating <= 2.5
    return false
  elsif performances_number == 0
    return true
  elsif performances_number == 1 && self.rating >= 3.5
    return true
  elsif performances_number == 2 && self.rating >= 4
    return true
  elsif performances_number == 3 && self.rating >= 4.5
    return true
  else
    return false
  end
end

def rating_update(rating_from_venue)
  sum = self.rating + rating_from_venue
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
