class VacanciesController < InheritedResources::Base

  def create
    create! do |success, failure|
      success.html { redirect_to company_vacancies_path(current_company) }
      failure.html { render "new"}
    end
  end

  def update
    update! do |success, failure|
      success.html { redirect_to company_vacancies_path(current_company) }
      failure.html { render "edit"}
    end
  end

  def destroy
    destroy! { redirect_to company_vacancies_path(current_company) }
  end

protected

  def begin_of_association_chain
    current_company
  end
end
