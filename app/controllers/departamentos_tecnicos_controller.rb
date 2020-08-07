class DepartamentosTecnicosController < ApplicationController
  def computo
    @departamento = Departamento.find_by_id(1)
  end
  def computo_sitiosinteres
    @departamento = Departamento.find_by_id(1)
  end

  def difusion
    @departamento = Departamento.find_by_id(2)
  end

  def informacionDocumentacion
    @departamento = Departamento.find_by_id(3)
      @novedadesbibliograficas = Novedadbibliografica.all
  end

  def produccionAudiovisual
    @departamento = Departamento.find_by_id(4)
  end

  def publicaciones
    @departamento = Departamento.find_by_id(5)

  end
  def presencia_medios
    @departamento = Departamento.find_by_id(2)
  end

  def boletines_2009
    @archivos = Archivo.all
    @departamento = Departamento.find_by_id(2)
  end



end
