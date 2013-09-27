class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?
  load_and_authorize_resource :unless => :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  rescue_from CanCan::AccessDenied do |exception|
    render :file => "#{Rails.root}/public/restricted.html.erb", :status => 403, :layout => false
    ## to avoid deprecation warnings with Rails 3.2.x (and incidentally using Ruby 1.9.3 hash syntax)
    ## this render call should be:
    # render file: "#{Rails.root}/public/403", formats: [:html], status: 403, layout: false
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update ) << :username
    devise_parameter_sanitizer.for(:sign_up ) << :username
  end
end
