class PlantRecordsController < ApplicationController
  before_action :set_plant_record, only: %i[ show edit update destroy ]

  # GET /plant_records or /plant_records.json
  def index
    @plant_records = PlantRecord.all
  end

  # GET /plant_records/1 or /plant_records/1.json
  def show
  end

  # GET /plant_records/new
  def new
    @plant_record = PlantRecord.new
  end

  # GET /plant_records/1/edit
  def edit
  end

  # POST /plant_records or /plant_records.json
  def create
    @plant_record = PlantRecord.new(plant_record_params)

    respond_to do |format|
      if @plant_record.save
        format.html { redirect_to @plant_record, notice: "Plant record was successfully created." }
        format.json { render :show, status: :created, location: @plant_record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @plant_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_records/1 or /plant_records/1.json
  def update
    respond_to do |format|
      if @plant_record.update(plant_record_params)
        format.html { redirect_to @plant_record, notice: "Plant record was successfully updated." }
        format.json { render :show, status: :ok, location: @plant_record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @plant_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_records/1 or /plant_records/1.json
  def destroy
    @plant_record.destroy
    respond_to do |format|
      format.html { redirect_to plant_records_url, notice: "Plant record was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_plant_record
    @plant_record = PlantRecord.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def plant_record_params
    params.require(:plant_record).permit(:latitude, :longitude, :notes, photos: [])
  end
end
