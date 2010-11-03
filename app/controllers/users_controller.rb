class UsersController < InheritedResources::Base
  filter_access_to :all
  respond_to :html

  def create
    create!(:notice => "User was successfully created. Check your email" ) do |success|
      success.html do
        UserSession.create(@user)
        @user.deliver_activation_instructions!
      end      
    redirect_to login_path
    end
    
  end
 
end
