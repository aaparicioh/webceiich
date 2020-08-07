class SearchController < ApplicationController
  def index
    @search=params[:search]
    @categoria=params[:categoria]
    @filtro=params[:filtro]


    if !@search.nil? and !@search.blank? and @search.length > 2
      if !@categoria.nil? and !@categoria.blank?
        if !@filtro.nil? and !@filtro.blank?
          if @categoria.to_s == "Libro"
          @libroq= Libro.searchf(@search,@categoria)
          end
          if @categoria.to_s == "Revista"
          @revistaq= Revista.searchf(@search,@categoria)
          end
          if @categoria.to_s == "Actividad"
          @eventq= Event.searchf(@search,@categoria)
          end
          if @categoria.to_s == "Investigador"
          @investigadorq= Investigador.searchf(@search)
          end
        else
          if @categoria.to_s == "Libro"
          @libroq= Libro.search(@search)
          end
          if @categoria.to_s == "Revista"
          @revistaq= Revista.search(@search)
          end
          if @categoria.to_s == "Actividad"
          @eventq= Event.search(@search)
          end
          if @categoria.to_s == "Investigador"
          @investigadorq= Investigador.search(@search)
          end
        end

      else

        @libroq= Libro.search(@search)
        @revistaq= Revista.search(@search)
        @eventq= Event.search(@search)
        @investigadorq= Investigador.search(@search)
      end
    else
      if !@categoria.nil? and !@categoria.blank?
        if @categoria.to_s == "Libro"
        @libroq= Libro.all
        end
        if @categoria.to_s == "Revista"
        @revistaq= Revista.all
        end
        if @categoria.to_s == "Actividad"
        @eventq= Event.all
        end
        if @categoria.to_s == "Investigador"
        @investigadorq= Investigador.all
        end

      end
    end




  end
end
