class AddMaxBookingsToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :max_bookings, :integer
  end
end
