class CoreController < InheritedResources::Base
  include InheritedResources::DSL
  
  filter_access_to :all
  
  index!  { |format| format.html { render :template => "core/index" } }
  new!    { |format| format.html { render :template => "core/new"   } }
  edit!   { |format| format.html { render :template => "core/edit"  } }

  create! do |success, failure|
    success.html { redirect_to collection_path }
    failure.html { render :template => "core/new" }
  end

  update! do |success, failure|
    success.html { redirect_to collection_path }
    failure.html { render :template => "core/edit" }
  end

end
