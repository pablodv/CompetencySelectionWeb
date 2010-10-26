class SpecialtiesController < InheritedResources::Base
  respond_to :html
  filter_resource_access
end
