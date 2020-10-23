require 'rails_helper'

describe Mechanic, type: :model do
  describe "relationships" do
    it { should have_many(:rides).through(:ride_mechanics) }
  end
end
