class EvaluationsController < InheritedResources::Base

protected

  def begin_of_association_chain
      current_company
  end
end
