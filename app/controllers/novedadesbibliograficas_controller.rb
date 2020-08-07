class NovedadesbibliograficasController < ApplicationController
  before_action :set_novedadbibliografica, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_admin!, only: [:create,:new,:update,:edit,:destroy]
  # GET /novedadesbibliograficas
  # GET /novedadesbibliograficas.json
  def index
    @novedadesbibliograficas = Novedadbibliografica.all
  end

  # GET /novedadesbibliograficas/1
  # GET /novedadesbibliograficas/1.json
  def show
  end

  # GET /novedadesbibliograficas/new
  def new
    @novedadbibliografica = Novedadbibliografica.new
  end

  # GET /novedadesbibliograficas/1/edit
  def edit
  end

  # POST /novedadesbibliograficas
  # POST /novedadesbibliograficas.json
  def create
    @novedadbibliografica = Novedadbibliografica.new(novedadbibliografica_params)

    respond_to do |format|
      if @novedadbibliografica.save
        format.html { redirect_to @novedadbibliografica, notice: 'Novedadbibliografica was successfully created.' }
        format.json { render :show, status: :created, location: @novedadbibliografica }
      else
        format.html { render :new }
        format.json { render json: @novedadbibliografica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /novedadesbibliograficas/1
  # PATCH/PUT /novedadesbibliograficas/1.json
  def update
    respond_to do |format|
      if @novedadbibliografica.update(novedadbibliografica_params)
        format.html { redirect_to @novedadbibliografica, notice: 'Novedadbibliografica was successfully updated.' }
        format.json { render :show, status: :ok, location: @novedadbibliografica }
      else
        format.html { render :edit }
        format.json { render json: @novedadbibliografica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /novedadesbibliograficas/1
  # DELETE /novedadesbibliograficas/1.json
  def destroy
    @novedadbibliografica.destroy
    respond_to do |format|
      format.html { redirect_to novedadesbibliograficas_url, notice: 'Novedadbibliografica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_novedadbibliografica
      @novedadbibliografica = Novedadbibliografica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def novedadbibliografica_params
      params.require(:novedadbibliografica).permit(:mes, :anio, :nombre_pdf)
    end
end
