class UserSessionsController < InheritedResources::Base
  respond_to :html
  actions :new, :create, :destroy
 
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Login successful!"
      redirect_to welcome_path
    end
  end

  def destroy
    current_user_session.destroy
    flash[:notice] = "Logout successful!"
    redirect_to login_path
  end

end
