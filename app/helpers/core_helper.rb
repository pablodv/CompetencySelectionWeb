module CoreHelper

  def link_to_new_resource
    if new_action_defined?
      link_to("New #{resource_class.name.titleize}", new_resource_url)
    end
  end

  def new_action_defined?
    controller.class.action_methods.include?("new")
  end

  def resource_name
    resource_class.name.titleize
  end
  
end
