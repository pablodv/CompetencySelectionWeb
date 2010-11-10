module EducationsHelper

    def institute_type_education(type_education)
    options = [['','']]
    if type_education
      institutes = Institute.find_all_by_level(type_education)
      institutes.each do |institute|
        options << [institute.name, institute.id]
      end
    end
    options
  end
  
  def specilaty_type_education(type_education)
    options = [['','']]
    if type_education
      specialties = Specialty.find_all_by_level(type_education)
      specialties.each do |specialty|
        options << [specialty.name, specialty.id]
      end
    end
    options
  end
  
end
