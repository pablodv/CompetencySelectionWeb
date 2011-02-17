class QuestionsController < CoreController

  protected

  def begin_of_association_chain
    @competency = Competency.find(params[:competency_id]) unless params[:competency_id].blank?
  end

end
