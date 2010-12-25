class InstitutesController < CoreController
#  filter_access_to :all
#  respond_to :html

protected

  def begin_of_association_chain
    current_company
  end
  
end
