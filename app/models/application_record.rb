class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def authenticate_editor!
    redirect_to root_path, notice: "No tienes permiso para entrar aqui :v" if  current_usuario.is_normal_user?
  end
  def authenticate_admin!
    #redirect_to root_path, notice: "No tienes permiso para entrar aqui :v" if  current_usuario.is_normal_user?
    unless current_user.is_admin?
      redirect_to root_path, notice:"No"
    end
  end

end
