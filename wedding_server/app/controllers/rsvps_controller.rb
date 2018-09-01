class RsvpsController < ApplicationController
    layout "rsvp"

    before_action :authenticate_admin!, :only => [:index]

    def index
      @rsvps = Rsvp.all()
      @signed_in = admin_signed_in?
    end

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
