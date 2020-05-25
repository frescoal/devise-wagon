class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

 
  def users_params
  	params.require(:user).permit(:email,:password, :first_name, :last_name)
  end

  private

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_in, keys: [:color])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
