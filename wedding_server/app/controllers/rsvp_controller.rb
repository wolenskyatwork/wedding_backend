class RsvpController < ApplicationController
    def create
      Rsvp.create(person_params)
    end

    def person_params
      params.require(:rsvp).permit(
        :attending,
        :dietary_note,
        :first_name,
        :food_option_id,
        :last_name
      )
    end
end
