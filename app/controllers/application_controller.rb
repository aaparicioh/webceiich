class ApplicationController < ActionController::Base

#  before_action :set_locale
#def set_locale
  # if params[:locale] is nil then I18n.default_locale will be used
#  I18n.locale = params[:locale]
#end
  def current_ability
    @current_ability ||= Ability.new(current_admin)

  end
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, :alert => exception.message
  end

  private

    # Overwriting the sign_out redirect path method
    def after_sign_out_path_for(current_admin)

      if current_admin == :admin
        new_admin_session_path
      elsif current_confianza == :confianza
        new_confianza_session_path
      else
        root_path
      end
    end
end
