class PublicacionesController < ApplicationController

  before_action :set_publicacion, only: [:show, :edit, :update, :destroy]
  #skip_before_action :verify_authenticity_token
  load_and_authorize_resource
  def index
    @publicaciones = Publicacion.all
  end
  def new
    @publicion= Publicacion.new
  end

  def show
  end

  def create
      @publicacion= Publicacion.new(publicacion_params)

      respond_to do |format|
        if @publicacion.save
            programas = ["historiaCiencia","cienciaTecnologia"]
            programa=programas[@publicacion.programa_id-1].to_s
          format.html {redirect_to "/investigacion/"+programa, notice: 'Principalelement was successfully created.' }
          format.json {render :show, status: :created, location: @publicacion}
        else
          format.html { render :new}
          format.json { render json:@publicacion.errors, status: :unprocessable_entity }
        end
      end
  end

  def edit
  @programas = Programa.all
    @libro = Libro.all
  end

  def update

    respond_to do |format|
      if @publicacion.update(publicacion_params)

        programas = ["historiaCiencia","cienciaTecnologia"]
        puts "#{@publicacion.programa_id}"
        puts "programas#{programas[@publicacion.programa_id-1]}"
        programa=programas[@publicacion.programa_id-1].to_s
        format.html { redirect_to "/investigacion/"+programa, notice: 'Libro was successfully updated.' }
        format.json { render :show, status: :ok ,location: @publicacion }
      else
        puts "segundo"
        format.html { render :edit }
        format.json { render json: @publicacion.errors, status: :unprocessable_entity }
      end
    end
  end

    def destroy
      puts "dentro"
      programas = ["historiaCiencia","cienciaTecnologia"]
      puts "#{@publicacion.programa_id}"
      puts "programas#{programas[@publicacion.programa_id-1]}"
      programa=programas[@publicacion.programa_id-1].to_s
      @publicacion.destroy
      respond_to do |format|
        format.html { redirect_to "/investigacion/"+programa, notice: 'Publicacion was successfully destroyed.' }
        format.json { head :no_content }
      end
    end





  private

  def set_publicacion
    @publicacion= Publicacion.find(params[:id])
  end

  def publicacion_params
    params.require(:publicacion).permit(:programa_id,:libro_id)

  end


end
