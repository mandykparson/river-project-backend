class RiverStretchesController < ApplicationController

    def index
        @stretches = RiverStretch.all 
        render json: @stretches, include: [:images => {include: :pois}]
    end
end
