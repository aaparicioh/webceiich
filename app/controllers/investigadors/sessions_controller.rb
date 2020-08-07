# frozen_string_literal: true

class Investigadors::SessionsController < Devise::SessionsController

  # before_action :configure_sign_in_params, only: [:create]
    #before_action :authenticate_admin!, only: [:sign_up]
    before_action :authenticate_admin!, only: [:create,:new,:update,:edit,:destroy]
    before_action :check_recaptcha_v2, only: [:create]
  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
   #def create
    # @investigador = Investigador.new(params[:id])
    #  if verify_recaptcha(model: @investigador) && @investigador.save
    #    redirect_to @@investigador
    #  else
    #    render 'new'
    #  end
   #end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  private
  def check_recaptcha_v2
      valid = verify_recaptcha secret_key: ENV["RECAPTCHA_V2_CHECKBOX_SECRET_KEY"]
      puts "valido: #{valid} and #{ENV["RECAPTCHA_V2_CHECKBOX_SECRET_KEY"]}"
      if not valid
        redirect_to new_investigador_session_path
      end
    end
  # Use callbacks to share common setup or constraints between actions.
  def set_investigador_programa
    @investigador = Investigador.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def investigador_params
    params.require(:investigador).permit(:nombres, :id,:estimulos, :curriculo, :lineasDeInvestigacion,:publicaciones,:docencia,:asociacionesCientificas,:ligasDeInteres, :img_art,:cargoConsejoInterno)
  end

  def sign_up_params
  params.require(:investigador).permit(:email, :password, :password_confirmation)
  end

  def account_update_params
  params.require(:investigador).permit(:email, :nombres, :apPat, :apMat, :nombramiento, :categoria, :nivel, :definitividad, :estimulos, :sociedades, :adscripcion, :telefono, :extension, :humanindex, :podcast, :foto, :cargo, :cargoConsejoInterno, :sexo, :investigacionprogramas_id, :password, :password_confirmation, :current_password, :curriculo, :lineasDeInvestigacion,:publicaciones,:docencia,:asociacionesCientificas,:ligasDeInteres,:historiaAcademica)
  end
end
