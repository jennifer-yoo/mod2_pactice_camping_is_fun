class PlaysController < ApplicationController

    def new
        @play = Play.new
        @campers = Camper.all
        @activities = Activity.all
    end

    def create
        @play = Play.create(play_params)
        redirect_to camper_path(@play.camper)
    end

    private

    def play_params
        params.require(:play).permit(:camper_id, :activity_id, :time)
    end
end
