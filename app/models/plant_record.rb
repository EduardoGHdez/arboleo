class PlantRecord < ApplicationRecord
  has_many_attached :photos
  validates :latitude, presence: true
  validates :longitude, presence: true
end
