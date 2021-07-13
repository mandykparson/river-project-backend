class ImagesController < ApplicationController
    belong_to :river_stretch
    has_many :pois
end
