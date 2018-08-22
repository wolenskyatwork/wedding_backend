require 'rails_helper'

RSpec.describe "rsvp api", :type => :request do
  it "creates an rsvp" do
    expect(Rsvp.count()).to equal(0)
		food_option = FoodOption.create(:name => "Chicken")

		post "/rsvp", :params => {
			:rsvp => {
				:attending => "true",
				:dietary_note => "lol",
				:first_name => "Kurt",
				:food_option_id => food_option.id,
				:last_name => "Sloane"
			}
		}

		kurt_rsvp = Rsvp.last()
		
    expect(Rsvp.count()).to equal(1)
		expect(kurt_rsvp.first_name).to eq("Kurt")
		expect(kurt_rsvp.last_name).to eq("Sloane")
		expect(kurt_rsvp.attending).to eq(true)
		expect(kurt_rsvp.dietary_note).to eq("lol")
		expect(kurt_rsvp.food_option.id).to equal(food_option.id)
  end
end
