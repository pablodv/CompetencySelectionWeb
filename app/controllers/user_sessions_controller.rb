class UserSessionsController < InheritedResources::Base
  respond_to :html
  actions :new, :create, :destroy
 
  def create
    if @company = Company.find_by_login(params[:user_session][:company_login])
      set_company_session_info(@company)
      create!(:notice => "Login successful!") { welcome_path }
    end
  end

  def destroy
    current_user_session.destroy
    flash[:notice] = "Logout successful!"
    redirect_to root_path
  end

end
