class InvestigadorsController < ApplicationController

  def new
      #@investigador = Investigador.find(params[:id])
    end


    def show
      puts "En show"
    	@investigador = Investigador.find(params[:id])
    end
    def curriculo
      @investigador = Investigador.find(params[:id])
    end
    def lineasDeInvestigacion
      @investigador = Investigador.find(params[:id])
    end

    def publicaciones
      @investigador = Investigador.find(params[:id])
    end
    def docencia
      @investigador = Investigador.find(params[:id])
    end
    def asociacionesCientificas
      @investigador = Investigador.find(params[:id])
    end
    def ligasDeInteres
      @investigador = Investigador.find(params[:id])
    end


end
