class JobCompetencyProfilesController < CoreController
  before_filter :load_collections

  def departament_by_area
    @departaments = Area.find(params[:area_id]).departaments
    respond_to do |format|
      format.json  { render :json => @departaments }
    end
  end

  protected

  def begin_of_association_chain
    current_company
  end

  def load_collections
    @area = Area.find(:all)
    @departament = Departament.find(:all)
    @competencies = Competency.find(:all).map { |c| [c.name, c.id] }
  end
end
