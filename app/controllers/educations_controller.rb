class EducationsController < InheritedResources::Base
  filter_access_to :all
  respond_to :html

  def index    
    @tertiary   = Education.type('tertiary').user(current_user.id)
    @secondary  = Education.type('secondary').user(current_user.id)
    @university = Education.type('university').user(current_user.id)
    @graduate   = Education.type('graduate').user(current_user.id)
  end

  def create
    create! do |format|
      format.html { redirect_to user_educations_path }
    end
  end

  def update
    update! do |format|
      format.html { redirect_to user_educations_path }
    end
  end

  def institute_type_education
    @institutes = Institute.find_all_by_level(params[:type])
    respond_to do |format|
      format.json  { render :json => @institutes }
    end
  end

#  def specialty_type_education
#    @specialties = Especiaty.find_all_by_level(params[:type])
#    respond_to do |format|
#      format.json  { render :json => @specilaties }
#    end
#  end

 protected

  def begin_of_association_chain
    current_user
  end
end
