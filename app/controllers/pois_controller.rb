class PoisController < ApplicationController
    
    def index
        @pois = Poi.all
        render json: @pois, include: :comments
end
