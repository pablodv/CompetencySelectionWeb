class JobsController < InheritedResources::Base
  filter_access_to :all
  respond_to :html

  def create
    create! do |format|
      format.html { redirect_to user_jobs_path }
    end
  end

  def update
    update! do |format|
      format.html { redirect_to user_jobs_path }
    end
  end

 protected

  def begin_of_association_chain
    current_user
  end

end
