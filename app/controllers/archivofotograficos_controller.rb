class ArchivofotograficosController < ApplicationController
  before_action :set_archivofotografico, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:create,:new,:update,:edit,:destroy]
  # GET /archivofotograficos
  # GET /archivofotograficos.json
  def index
    @archivofotograficos = Archivofotografico.all
  end

  # GET /archivofotograficos/1
  # GET /archivofotograficos/1.json
  def show
  end

  # GET /archivofotograficos/new
  def new
    @archivofotografico = Archivofotografico.new
  end

  # GET /archivofotograficos/1/edit
  def edit
  end

  # POST /archivofotograficos
  # POST /archivofotograficos.json
  def create
    @archivofotografico = Archivofotografico.new(archivofotografico_params)

    respond_to do |format|
      if @archivofotografico.save
        format.html { redirect_to @archivofotografico, notice: 'Archivofotografico was successfully created.' }
        format.json { render :show, status: :created, location: @archivofotografico }
      else
        format.html { render :new }
        format.json { render json: @archivofotografico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /archivofotograficos/1
  # PATCH/PUT /archivofotograficos/1.json
  def update
    respond_to do |format|
      if @archivofotografico.update(archivofotografico_params)
        format.html { redirect_to @archivofotografico, notice: 'Archivofotografico was successfully updated.' }
        format.json { render :show, status: :ok, location: @archivofotografico }
      else
        format.html { render :edit }
        format.json { render json: @archivofotografico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archivofotograficos/1
  # DELETE /archivofotograficos/1.json
  def destroy
    @archivofotografico.destroy
    respond_to do |format|
      format.html { redirect_to archivofotograficos_url, notice: 'Archivofotografico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archivofotografico
      @archivofotografico = Archivofotografico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def archivofotografico_params
      params.require(:archivofotografico).permit(:titulo, :descripcion, :anio, :encargado)
    end
end
