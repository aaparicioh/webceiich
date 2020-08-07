class CarruselsController < ApplicationController
  before_action :set_carrusel, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:create,:new,:update,:edit,:destroy,:show,:index]
  #skip_before_action :verify_authenticity_token, only: [:destroy]
  # GET /carrusels
  # GET /carrusels.json
  def index
    @carrusels = Carrusel.all
  end

  # GET /carrusels/1
  # GET /carrusels/1.json
  def show
      @events = Event.all
  end

  # GET /carrusels/new
  def new
    @carrusel = Carrusel.new
  end

  # GET /carrusels/1/edit
  def edit
  end

  # POST /carrusels
  # POST /carrusels.json
  def create
    @carrusel = Carrusel.new(carrusel_params)

    respond_to do |format|
      if @carrusel.save
        format.html { redirect_to @carrusel, notice: 'Carrusel was successfully created.' }
        format.json { render :show, status: :created, location: @carrusel }
      else
        format.html { render :new }
        format.json { render json: @carrusel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carrusels/1
  # PATCH/PUT /carrusels/1.json
  def update
    respond_to do |format|
      if @carrusel.update(carrusel_params)
        format.html { redirect_to @carrusel, notice: 'Carrusel was successfully updated.' }
        format.json { render :show, status: :ok, location: @carrusel }
      else
        format.html { render :edit }
        format.json { render json: @carrusel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carrusels/1
  # DELETE /carrusels/1.json
  def destroy
    @carrusel.destroy
    respond_to do |format|
      format.html { redirect_to carrusels_url, notice: 'Carrusel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrusel
      @carrusel = Carrusel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carrusel_params
      params.require(:carrusel).permit(:imagen, :url, :img, :event_id, :doc)
    end
end
