class CompetenciesController < InheritedResources::Base

  def create
    create! do |success, failure|
      success.html { redirect_to company_competencies_path(current_company) }
      failure.html { render "new"}
    end
  end

  def update
    update! do |success, failure|
      success.html { redirect_to company_competencies_path(current_company) }
      failure.html { render "edit"}
    end
  end

  def destroy
    destroy! { redirect_to company_competencies_path(current_company) }
  end

end
