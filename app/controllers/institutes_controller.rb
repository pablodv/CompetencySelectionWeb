class InstitutesController < InheritedResources::Base
  filter_access_to :all
  respond_to :html
 
end
