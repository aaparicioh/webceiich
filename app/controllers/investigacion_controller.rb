class InvestigacionController < ApplicationController



  def historiaCiencia
    @programa = Programa.find_by_id(1)
    @publicacion= Publicacion.new
    @publicaciones=Publicacion.all
    @libro = Libro.all
  end

  def cienciaTecnologia
    @programa = Programa.find_by_id(2)
    @publicacion= Publicacion.new
    @publicaciones=Publicacion.all
    @libro = Libro.all
  end

  def cienciasSocialesLiteratura
    @programa = Programa.find_by_id(3)
  end

  def cibercultura
    @programa = Programa.find_by_id(4)
  end

  def mundoSigloXXI
    @programa = Programa.find_by_id(5)
  end

  def ciudadesGestion
    @programa = Programa.find_by_id(6)
  end

  def produccionBienesServicios
    @programa = Programa.find_by_id(7)
  end

  def poderSubjetividadCultura
    @programa = Programa.find_by_id(8)
  end

  def feminista
    @programa = Programa.find_by_id(9)
  end

  def derechoSociedad
    @programa = Programa.find_by_id(10)
  end

  def estudiosVisuales
    @programa = Programa.find_by_id(11)
  end





end
