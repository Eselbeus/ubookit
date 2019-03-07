class Performance < ApplicationRecord
  belongs_to :musician
  belongs_to :venue

  def start_time
    self.time
  end
end
