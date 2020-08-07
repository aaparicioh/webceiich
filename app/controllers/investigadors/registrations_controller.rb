# frozen_string_literal: true

class Investigadors::RegistrationsController < Devise::RegistrationsController
   #before_action :configure_sign_up_params, only: [:create]
   before_action :account_update_params, only: [:update]
 before_action :authenticate_admin!, only: [:create,:new,:update,:edit,:destroy]
  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
   def edit
    @programas = Programa.all
  #   super
   end

  # PUT /resource
   #def update
     #raise @investigador.update(account_update_params).to_yaml
  #  super

  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end


      private
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
    		params.require(:investigador).permit(:email, :nombres, :apPat, :apMat, :nombramiento, :categoria, :nivel, :definitividad, :estimulos, :sociedades, :adscripcion, :telefono, :extension, :humanindex, :podcast, :foto, :cargo, :cargoConsejoInterno, :sexo, :programa_id, :password, :password_confirmation, :current_password, :curriculo, :lineasDeInvestigacion,:publicaciones,:docencia,:asociacionesCientificas,:ligasDeInteres,:historiaAcademica, organocolegiado_ids: [])
    		end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

end
