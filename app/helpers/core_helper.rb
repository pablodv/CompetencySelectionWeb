module CoreHelper

  def link_to_new_resource
    if new_action_defined?
      link_to("New #{resource_class.human_name}", new_resource_url)
    end
  end

  def new_action_defined?
    controller.class.action_methods.include?("new")
  end
  
end
