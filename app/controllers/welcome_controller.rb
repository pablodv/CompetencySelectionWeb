class WelcomeController < ApplicationController
  before_filter :login_required
  before_filter :current_user

  def index
  end

end
