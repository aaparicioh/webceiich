class ActividadesAcademicasController < ApplicationController

  def proximasActividades

    @events = Event.all

    @miaw = params[:valoridevent]
    puts "valor prox #{@miaw}"
  end

  def agenda
  end

  def anteriores
  
    @events = Event.all
  end

  def archivoFotografico
    @archivofotograficos = Archivofotografico.all
  end

  def prueba

  end

  def archivoFotografico
    @archivofotograficos = Archivofotografico.all
  end
  def archivoFotografico_2004
    @archivofotograficos = Archivofotografico.all
  end
  def archivoFotografico_2005
    @archivofotograficos = Archivofotografico.all
  end
  def archivoFotografico_2006
    @archivofotograficos = Archivofotografico.all
  end
  def archivoFotografico_2007
    @archivofotograficos = Archivofotografico.all
  end
  def archivoFotografico_2008
    @archivofotograficos = Archivofotografico.all
  end
  def archivoFotografico_2009
    @archivofotograficos = Archivofotografico.all
  end
  def archivoFotografico_2010
    @archivofotograficos = Archivofotografico.all
  end
  def archivoFotografico_2011
    @archivofotograficos = Archivofotografico.all
  end
  def archivoFotografico_2012
    @archivofotograficos = Archivofotografico.all
  end
  def archivoFotografico_2013
    @archivofotograficos = Archivofotografico.all
  end
  def archivoFotografico_2014
    @archivofotograficos = Archivofotografico.all
  end
  def archivoFotografico_2015
    @archivofotograficos = Archivofotografico.all
  end
end
