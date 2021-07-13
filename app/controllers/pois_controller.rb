class PoisController < ApplicationController
    belongs_to :image
    has_many :comments
end
