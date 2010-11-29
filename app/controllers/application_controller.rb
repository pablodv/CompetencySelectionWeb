class ApplicationController < ActionController::Base
  include Authentication
  helper :all
  protect_from_forgery
  before_filter { |u| Authorization.current_user = u.current_user }

  protected

  def permission_denied
    flash[:error] = "Sorry, you are not allowed to access that page."
    redirect_to welcome_path
  end

end
