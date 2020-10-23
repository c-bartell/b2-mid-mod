require 'rails_helper'

describe AmusementPark, type: :model do
  describe 'relationships' do
    it { should have_many(:rides) }
  end
  describe 'instance methods' do
    it '#average_thrill_rating' do
      amusement_park = AmusementPark.create!(name: "Wonder Wharf", admission_price: 50.00)
      ride1 = amusement_park.rides.create!(name: "Tickle Boat", thrill_rating: 10)
      ride2 = amusement_park.rides.create!(name: "Tea Cups", thrill_rating: 3)
      ride3 = amusement_park.rides.create!(name: "Bumper Cars", thrill_rating: 5)

      expect(amusement_park.average_thrill_rating.to_f.round(1)).to eq(6.0)
    end
  end
end
