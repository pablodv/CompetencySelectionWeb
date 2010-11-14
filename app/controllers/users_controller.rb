class UsersController < InheritedResources::Base
  filter_access_to :all
  respond_to :html

  def registration
    @user = User.new
  end
  
  def create
    @user = User.new params[:user]
    create! do |success|
      success.html do
        @user.deliver_activation_instructions!
        flash[:notice] = "User was successfully created. Check your email"
        redirect_to root_url
      end      
    end   
  end
 
end
