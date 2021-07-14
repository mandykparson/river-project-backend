class ImagesController < ApplicationController
    
    def index
        @images = Image.all
        render json: @images, include: :pois
    end
end
