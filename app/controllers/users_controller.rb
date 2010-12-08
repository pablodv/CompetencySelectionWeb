class UsersController < InheritedResources::Base
  filter_access_to :all
  respond_to :html

  def registration
    new!
  end

  def create
    create! do |success, failure|
      success.html do
        if params[:commit] == "Register"
          @user.deliver_activation_instructions!
          flash[:notice] = "User was successfully created. Check your email."
          redirect_to root_url
        else
          @user.deliver_activation_instructions!
          flash[:notice] = "User was successfully created"
          redirect_to welcome_path
        end
      end
      failure.html do
        if params[:commit] == "Register"
          render 'registration'
        else
          render 'new'
        end
      end
    end
  end

protected

  def begin_of_association_chain
    current_company
  end
end
