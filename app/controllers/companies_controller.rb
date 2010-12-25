class CompaniesController < InheritedResources::Base

  def update
    update! do |success, failure|
      success.html { redirect_to company_path(current_company) }
      failure.html { render "edit"}
    end
  end

end
