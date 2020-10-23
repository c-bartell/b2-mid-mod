require 'rails_helper'

describe 'As a visitor' do
  describe 'When I visit an amusement parks show page' do
    before(:each) do
      @amusement_park = AmusementPark.create!(name: "Wonder Wharf", admission_price: 9.99)
      @ride1 = @amusement_park.rides.create!(name: "Tickle Boat", thrill_rating: 10)
      @ride2 = @amusement_park.rides.create!(name: "Tea Cups", thrill_rating: 3)
      @ride3 = @amusement_park.rides.create!(name: "Bumper Cars", thrill_rating: 5)

      visit "amusement_parks/#{@amusement_park.id}"
    end
    it "I see the name and price of admission for that amusement park" do
      expect(page).to have_content(@amusement_park.name)
      expect(page).to have_content("Admissions: #{@amusement_park.admission_price}")
    end
    it "I see the names of all rides in that amusement park" do

    end
    it "I see the average thrill rating of this amusement parks rides" do

    end
  end
end
