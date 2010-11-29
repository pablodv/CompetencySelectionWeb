class CompaniesController < InheritedResources::Base

  def update
    update! { company_path current_company}
  end

end
