class HomeController < ApplicationController
  def index
    @plant_records = PlantRecord.all
  end
end
