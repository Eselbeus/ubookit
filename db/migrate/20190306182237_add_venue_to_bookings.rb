class AddVenueToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :venue_id, :integer
  end
end
