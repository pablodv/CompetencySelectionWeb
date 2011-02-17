class QuestionDictionariesController < ApplicationController

  def index
  	@competencies = Competency.find :all
  end  	

end
