require 'rails_helper'

describe "As a user" do
  describe "When I go to a mechanics show page" do
    before(:each) do
      @mechanic = Mechanic.create!(name: 'Olivia Carter', years_of_experience: 20)
      @amusement_park = AmusementPark.create!(name: "Wonder Wharf", admission_price: 50.00)
      @ride1 = @amusement_park.rides.create!(name: "Tickle Boat", thrill_rating: 10)
      @ride2 = @amusement_park.rides.create!(name: "Tea Cups", thrill_rating: 3)
      @ride3 = @amusement_park.rides.create!(name: "Bumper Cars", thrill_rating: 5)
      RideMechanic.create!(mechanic_id: @mechanic.id, ride_id: @ride1.id)
      RideMechanic.create!(mechanic_id: @mechanic.id, ride_id: @ride2.id)

      visit "mechanics/#{@mechanic.id}"
    end
    it "I see their name, years of experience, and the names of all rides they're working on" do
      expect(page).to have_content("Name: #{@mechanic.name}")
      expect(page).to have_content("Years of Experience: #{@mechanic.years_of_experience}")
      expect(page).to have_content("Current Rides They're Working On:")
      within("#ride-#{@ride1.id}") do
        expect(page).to have_content(@ride1.name)
      end
      within("#ride-#{@ride2.id}") do
        expect(page).to have_content(@ride1.name)
      end
    end
  end
end
