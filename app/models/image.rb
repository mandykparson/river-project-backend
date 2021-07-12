class Image < ApplicationRecord
  belongs_to :river_stretch
  has_many :pois
end
