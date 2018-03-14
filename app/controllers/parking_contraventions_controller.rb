class ParkingContraventionsController < ApplicationController
  before_action :set_parking_contravention, only: [:show, :edit, :update, :destroy]

  # GET /parking_contraventions
  # GET /parking_contraventions.json
  def index
    @parking_contraventions = ParkingContravention.all
  end

  # GET /parking_contraventions/1
  # GET /parking_contraventions/1.json
  def show
  end

  # GET /parking_contraventions/new
  def new
    @parking_contravention = ParkingContravention.new
  end

  # GET /parking_contraventions/1/edit
  def edit
  end

  # POST /parking_contraventions
  # POST /parking_contraventions.json
  def create
    @parking_contravention = ParkingContravention.new(parking_contravention_params)

    respond_to do |format|
      if @parking_contravention.save
        format.html { redirect_to @parking_contravention, notice: 'Parking contravention was successfully created.' }
        format.json { render :show, status: :created, location: @parking_contravention }
      else
        format.html { render :new }
        format.json { render json: @parking_contravention.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parking_contraventions/1
  # PATCH/PUT /parking_contraventions/1.json
  def update
    respond_to do |format|
      if @parking_contravention.update(parking_contravention_params)
        format.html { redirect_to @parking_contravention, notice: 'Parking contravention was successfully updated.' }
        format.json { render :show, status: :ok, location: @parking_contravention }
      else
        format.html { render :edit }
        format.json { render json: @parking_contravention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parking_contraventions/1
  # DELETE /parking_contraventions/1.json
  def destroy
    @parking_contravention.destroy
    respond_to do |format|
      format.html { redirect_to parking_contraventions_url, notice: 'Parking contravention was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parking_contravention
      @parking_contravention = ParkingContravention.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parking_contravention_params
      params.require(:parking_contravention).permit(:issue_date, :ticket_number, :street, :violations_id)
    end
end
