class StudiesController < ApplicationController #InheritedResources::Base
  filter_access_to :all
  respond_to :html

  def index
    @studies = Study.all
  end
  
protected

  def begin_of_association_chain
    current_user
  end
end
