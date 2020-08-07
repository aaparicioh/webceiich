class FondoEditorialController < ApplicationController
  def novedades
  end

  def libros
    @tematica=params[:tematica]
    @libros = Libro.all
  end

  def revistas
  end

  def video
  end

  def accesoAbierto
  end

  def ventasDistribucion
  end

  def libros_tematica
    @libros = Libro.all
    @tematica=Tematica.all
  end

  def libros_coleccion
    @libros = Libro.all
  end

  def interdiciplina
    @revistas = Revista.all
  end

  def critica_juridica
    @revistas = Revista.all
  end

  def america_latina
      @libros = Libro.all
  end

  def diversidad_feminista
      @libros = Libro.all
  end

  def sin_coleccion
    @libros = Libro.all
  end

end
