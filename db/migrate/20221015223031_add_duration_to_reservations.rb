class AddDurationToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :duration, :integer
  end
end
