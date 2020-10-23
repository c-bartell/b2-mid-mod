class AddAmusementParkToRides < ActiveRecord::Migration[5.2]
  def change
    add_reference :rides, :amusement_park, foreign_key: true
  end
end
