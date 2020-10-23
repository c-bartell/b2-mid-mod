require 'rails_helper'

describe "As a user:" do
  describe "When I visit a mechanics index page" do
    it "I see a header saying 'All Mechanics' and I see a list of all mechanic's names and their years of experience" do
      mechanic1 = Mechanic.create!(name: 'Steve Smith', years_of_experience: 5)
      mechanic2 = Mechanic.create!(name: 'Olivia Carter', years_of_experience: 20)
      mechanic3 = Mechanic.create!(name: 'Dan Seagrave', years_of_experience: 2)

      visit "/mechanics"

      expect(page).to have_content("All Mechanics")

      within "#mechanic-#{mechanic1.id}" do
        expect(page).to have_content("Name: #{mechanic1.name}")
        expect(page).to have_content("Experience: #{mechanic1.years_of_experience} years")
      end
      within "#mechanic-#{mechanic2.id}" do
        expect(page).to have_content("Name: #{mechanic2.name}")
        expect(page).to have_content("Experience: #{mechanic2.years_of_experience} years")
      end
      within "#mechanic-#{mechanic3.id}" do
        expect(page).to have_content("Name: #{mechanic3.name}")
        expect(page).to have_content("Experience: #{mechanic3.years_of_experience} years")
      end
    end
  end
end
