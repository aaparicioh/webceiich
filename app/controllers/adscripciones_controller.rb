class AdscripcionesController < ApplicationController
  before_action :set_adscripcion, only: [:show, :edit, :update, :destroy]

  # GET /adscripciones
  # GET /adscripciones.json
  def index
    @adscripciones = Adscripcion.all
  end

  # GET /adscripciones/1
  # GET /adscripciones/1.json
  def show
  end

  # GET /adscripciones/new
  def new
    @adscripcion = Adscripcion.new
  end

  # GET /adscripciones/1/edit
  def edit
  end

  # POST /adscripciones
  # POST /adscripciones.json
  def create
    @adscripcion = Adscripcion.new(adscripcion_params)

    respond_to do |format|
      if @adscripcion.save
        format.html { redirect_to @adscripcion, notice: 'Adscripcion was successfully created.' }
        format.json { render :show, status: :created, location: @adscripcion }
      else
        format.html { render :new }
        format.json { render json: @adscripcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adscripciones/1
  # PATCH/PUT /adscripciones/1.json
  def update
    respond_to do |format|
      if @adscripcion.update(adscripcion_params)
        format.html { redirect_to @adscripcion, notice: 'Adscripcion was successfully updated.' }
        format.json { render :show, status: :ok, location: @adscripcion }
      else
        format.html { render :edit }
        format.json { render json: @adscripcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adscripciones/1
  # DELETE /adscripciones/1.json
  def destroy
    @adscripcion.destroy
    respond_to do |format|
      format.html { redirect_to adscripciones_url, notice: 'Adscripcion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adscripcion
      @adscripcion = Adscripcion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adscripcion_params
      params.require(:adscripcion).permit(:nombre)
    end
end
