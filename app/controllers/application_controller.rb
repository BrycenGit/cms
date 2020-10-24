class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  def authorize_admin
    unless current_user && current_user.admin
      redirect_to [current_user]
      flash[:alert] = "You do not have admin abilities"
    end
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit({ roles: [] }, :email, :password, :password_confirmation, :name, :admin)
    end
  end

end
