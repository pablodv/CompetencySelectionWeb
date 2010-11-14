authorization do
  role :admin do
    has_permission_on [:institutes, :specialties, :roles, :users, :jobs], :to => :manage
    has_permission_on :educations, :to => :manage_educations
  end

  role :register do
    has_permission_on :users, :to => [:show, :edit, :update] do
      if_attribute :id => is { user.id }
    end

    has_permission_on :jobs, :to => :manage do
      if_attribute :id => is { user.id }
    end

    has_permission_on :educations, :to => :manage_educations do
      if_attribute :user_id => is { user.id }
    end

  end

  role :guest do
    has_permission_on :users, :to => [:new, :create, :registration]
  end
end

privileges do
  privilege :manage do
    includes :index, :show, :new, :create, :edit, :update, :destroy
  end
  
  privilege :manage_educations do
    includes :index, :show, :new, :create, :edit, :update, :destroy, :institute_type_education, :specialty_type_education
  end
end