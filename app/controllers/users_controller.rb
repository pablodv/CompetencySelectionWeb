class UsersController < InheritedResources::Base
  respond_to :html
#  filter_access_to :all
  
  filter_resource_access
#  before_filter :require_no_user, :only =>   [:register, :create, :new]
#  before_filter :require_user,    :except => [:register, :create, :new]

  def create
    @user = User.new(params[:user])    
    create! do |success, failure|
      success.html do
        UserSession.create(@user)
        @user.deliver_activation_instructions!
      end      
    end
    flash[:notice]  = "User was successfully created. Check your email"
    redirect_to login_path
  end
  
#  def update
#    @user.update_attributes(params[:user])
#    @user.admin = params[:user][:admin] if current_user.admin? && !params[:user][:admin].blank?
#    update!
#  end
 
end
