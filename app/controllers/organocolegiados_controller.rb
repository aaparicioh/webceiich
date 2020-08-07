class OrganocolegiadosController < ApplicationController
  before_action :set_organocolegiado, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  # GET /organocolegiados
  # GET /organocolegiados.json
  def index
    @organocolegiados = Organocolegiado.all
  end

  # GET /organocolegiados/1
  # GET /organocolegiados/1.json
  def show
  end

  # GET /organocolegiados/new
  def new
    @organocolegiado = Organocolegiado.new
  end

  # GET /organocolegiados/1/edit
  def edit
  end

  # POST /organocolegiados
  # POST /organocolegiados.json
  def create
    @organocolegiado = Organocolegiado.new(organocolegiado_params)

    respond_to do |format|
      if @organocolegiado.save
        format.html { redirect_to @organocolegiado, notice: 'Organocolegiado was successfully created.' }
        format.json { render :show, status: :created, location: @organocolegiado }
      else
        format.html { render :new }
        format.json { render json: @organocolegiado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organocolegiados/1
  # PATCH/PUT /organocolegiados/1.json
  def update
    respond_to do |format|
      if @organocolegiado.update(organocolegiado_params)
        format.html { redirect_to @organocolegiado, notice: 'Organocolegiado was successfully updated.' }
        format.json { render :show, status: :ok, location: @organocolegiado }
      else
        format.html { render :edit }
        format.json { render json: @organocolegiado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organocolegiados/1
  # DELETE /organocolegiados/1.json
  def destroy
    @organocolegiado.destroy
    respond_to do |format|
      format.html { redirect_to organocolegiados_url, notice: 'Organocolegiado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organocolegiado
      @organocolegiado = Organocolegiado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organocolegiado_params
      params.require(:organocolegiado).permit(:nombre)
    end
end
