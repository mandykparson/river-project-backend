class Image < ApplicationRecord
  belongs_to :RiverStretch
  has_many :Point_of_Interests
end
