class NeighbourhoodsController < ApplicationController
  before_action :set_neighbourhood, only: [:show, :edit, :update, :destroy]

  # GET /neighbourhoods
  # GET /neighbourhoods.json
  def index
    @neighbourhoods = Neighbourhood.all
  end

  # GET /neighbourhoods/1
  # GET /neighbourhoods/1.json
  def show
  end

  # GET /neighbourhoods/new
  def new
    @neighbourhood = Neighbourhood.new
  end

  # GET /neighbourhoods/1/edit
  def edit
  end

  # POST /neighbourhoods
  # POST /neighbourhoods.json
  def create
    @neighbourhood = Neighbourhood.new(neighbourhood_params)

    respond_to do |format|
      if @neighbourhood.save
        format.html { redirect_to @neighbourhood, notice: 'Neighbourhood was successfully created.' }
        format.json { render :show, status: :created, location: @neighbourhood }
      else
        format.html { render :new }
        format.json { render json: @neighbourhood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /neighbourhoods/1
  # PATCH/PUT /neighbourhoods/1.json
  def update
    respond_to do |format|
      if @neighbourhood.update(neighbourhood_params)
        format.html { redirect_to @neighbourhood, notice: 'Neighbourhood was successfully updated.' }
        format.json { render :show, status: :ok, location: @neighbourhood }
      else
        format.html { render :edit }
        format.json { render json: @neighbourhood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /neighbourhoods/1
  # DELETE /neighbourhoods/1.json
  def destroy
    @neighbourhood.destroy
    respond_to do |format|
      format.html { redirect_to neighbourhoods_url, notice: 'Neighbourhood was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_neighbourhood
      @neighbourhood = Neighbourhood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def neighbourhood_params
      params.require(:neighbourhood).permit(:neighbourhood)
    end
end
