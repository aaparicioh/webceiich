class PrincipalController < ApplicationController
  before_action :authenticate_admin!, only: [:administradores]

  def index
  @carrusels = Carrusel.all
  @events = Event.all
  @elementoprincipal= Principalelement.all
  end

  def documentosPacto
    send_file "#{Rails.root}/app/assets/docs/documentosPacto.zip", type: "application/zip", x_sendfile: true
  end

  def administradores

  end

end
