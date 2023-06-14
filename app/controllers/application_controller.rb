class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_show_loading_page

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :photo])
  end

  private

  def set_show_loading_page
    @show_loading_page = flash[:show_loading_page]
    flash.delete(:show_loading_page)
  end

  def after_sign_in_path_for(resource)
    flash[:show_loading_page] = true
    super(resource)
  end

  def after_sign_out_path_for(resource)
    flash[:show_loading_page] = true
    super(resource)
  end
end
