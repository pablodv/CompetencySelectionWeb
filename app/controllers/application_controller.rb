class ApplicationController < ActionController::Base
  include Authentication
  helper :all
  protect_from_forgery
  before_filter { |c| Authorization.current_user = c.current_user }

  protected

  def permission_denied
    flash[:error] = "Sorry, you are not allowed to access that page."
    redirect_to welcome_path
  end
  
#  filter_parameter_logging :password, :password_confirmation
#  helper_method :current_user_session, :current_user
#
#private
#
#  def current_user_session
#    return @current_user_session if defined?(@current_user_session)
#    @current_user_session = UserSession.find
#  end
#
#  def current_user
#    return @current_user if defined?(@current_user)
#    @current_user = current_user_session && current_user_session.record
#  end
#
#  def require_user
#    unless current_user
#      store_location
#      flash[:notice] = "You must be logged in to access this page"
#      redirect_to root_path
#      return false
#    end
#  end
#
#  def require_no_user
#    if current_user
#      store_location
#      flash[:notice] = "You must be logged out to access this page"
#      redirect_to path_path
#      return false
#    end
#  end
#
#  def store_location
#    session[:return_to] = request.request_uri
#  end
#
#  before_filter { |c| Authorization.current_user = c.current_user }
#
#protected
#
#  def permission_denied
#    flash[:error] = "Sorry, you are not allowed to access that page."
#    redirect_to root_url
#  end

end
