class RiverStretchesController < ApplicationController

    def index
        @stretches = RiverStretch.all 
        render json: @stretches
    end
end
