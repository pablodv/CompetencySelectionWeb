class ItemsController < InheritedResources::Base

  def create
    create! do |success, failure|
      success.html { redirect_to company_competency_items_path(current_company, @current_competency) }
      failure.html { render "new" }
    end
  end

  def update
    update! do |success, failure|
      success.html { redirect_to company_competency_items_path(current_company, @current_competency) }
      failure.html { render "edit" }
    end
  end

  def destroy
    destroy!{ company_competency_items_path(current_company, @current_competency) }
  end
  
  protected

    def begin_of_association_chain
      @current_competency = Competency.find(params[:competency_id])
    end

end
