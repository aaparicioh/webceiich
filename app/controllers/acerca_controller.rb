class AcercaController < ApplicationController
  def objetivos
  end

  def objetivosEng
  end

  def objetivosItal
  end

  def objetivosPort
  end

  def objetivosFr
  end

  def objetivosDtsch
  end

  def historia
  end

  def historiaEng
  end

  def historiaItal
  end

  def historiaPort
  end

  def historiaFr
  end
  def prueba
  end

  def historiaDtsch
  end

  def personalAcademicoInvestigacion
    @investigadores = Investigador.all

  end

  def personalAcademicoTecnico
    @tecnicos = Tecnico.all

  end

  def direccion
    @investigadores = Investigador.all
    @tecnicos = Tecnico.all
    @confianzas = Confianza.all
  end

  def organosColegiados
  end

  def espacioInformativo
     @documentos = Documento.all
  end

  def procedimientos_internos
     @documentos = Documento.all
  end

  def docencia
     @documentos = Documento.all
  end

  def inforesActividades
  end

  def nueralia
  end

  def ubicacion
  end
def consejo_interno
  @investigadores = Investigador.all
  @tecnicos= Tecnico.all
end
  def comision_biblioteca
    @investigadores = Investigador.all
  end
def comision_consulta_academica
@investigadores = Investigador.all
end

def comision_dictamen_arbitraje
  @investigadores = Investigador.all
end

def comision_dictaminadora

end

 def comite_editorial

 end

def comite_educacion_continua

end

def comision_evaludora_primas

end

def comite_interno_computo

end

def subcomision_superacion_academica

end

def representante_consejo_academico_cs

end

def representantes_personal_investigacion_cth

end

 def representantes_personal_tecnico_cth

 end

 def comisionesM3

 end

 def ausencias

 end

 def espacio_informativo
   @documentos = Documento.all
 end



 def infoCEIICH2019_pdf
   send_file "#{Rails.root}/app/assets/docs/InfoCEIICH2019.pdf", type: "application/pdf", x_sendfile: true
 end

 def analisisG_pdf
   send_file "#{Rails.root}/app/assets/docs/analisisG.pdf", type: "application/pdf", x_sendfile: true

 end

  def inf1986_1993_pdf
    send_file "#{Rails.root}/app/assets/docs/inf1986_1993.pdf", type: "application/pdf", x_sendfile: true


  end

  def inf1995_1999_pdf
    send_file "#{Rails.root}/app/assets/docs/inf1995_1999.pdf", type: "application/pdf", x_sendfile: true


  end

  def infAct2011_pdf
    send_file "#{Rails.root}/app/assets/docs/infAct2011.pdf", type: "application/pdf", x_sendfile: true


  end

  def infAct2013_14_pdf
    send_file "#{Rails.root}/app/assets/docs/infAct2013_14.pdf", type: "application/pdf", x_sendfile: true


  end

  def info_2007_2008_pdf
    send_file "#{Rails.root}/app/assets/docs/info_2007_2008.pdf", type: "application/pdf", x_sendfile: true

  end

  def info14_15_pdf

    send_file "#{Rails.root}/app/assets/docs/info14_15.pdf", type: "application/pdf", x_sendfile: true
  end


  def infoO15_16_pdf
    send_file "#{Rails.root}/app/assets/docs/infoO15_16.pdf", type: "application/pdf", x_sendfile: true

  end

  def info16_17_pdf
    send_file "#{Rails.root}/app/assets/docs/info16_17_pdf.pdf", type: "application/pdf", x_sendfile: true

  end
  def info17_18_pdf
    send_file "#{Rails.root}/app/assets/docs/info17_18_pdf.pdf", type: "application/pdf", x_sendfile: true

  end

end
