class AddMechanicToRideMechanics < ActiveRecord::Migration[5.2]
  def change
    add_reference :ride_mechanics, :mechanic, foreign_key: true
  end
end
