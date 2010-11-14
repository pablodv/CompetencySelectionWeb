# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def jquery_onready(string)
    javascript_tag "jQuery(document).ready(function() { #{string} });"
  end

  def current_company
    @current_company ||= Company.find_by_id(session[:company_id])
  end
  
end
