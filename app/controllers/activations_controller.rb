class ActivationsController < ApplicationController

    def new
      @user = User.find_using_perishable_token(params[:activation_code], 1.week) || (raise Exception)
      raise Exception if @user.active?
    end

    def create
      @user = User.find(params[:id])
      if !@user.active
        if @user.activate!
          @user.deliver_activation_confirmation!
          flash[:notice] = "Your account has been activated."
          redirect_to root_url
        else
          redirect_to new_user
        end
    end
    
end
end
