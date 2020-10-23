class AddRideToRideMechanics < ActiveRecord::Migration[5.2]
  def change
    add_reference :ride_mechanics, :ride, foreign_key: true
  end
end
