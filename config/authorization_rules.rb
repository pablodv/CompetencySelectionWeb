authorization do
  role :admin do
    has_permission_on [:institutes, :specialties, :roles,:users, :studies], :to => :manage
    has_permission_on :studies, :to => [:manage, :level]
  end

  role :register do
    has_permission_on :users, :to => [:show, :edit, :update] do
      if_attribute :id => is { user.id }
    end
  end

  role :guest do
    has_permission_on :users, :to => [:new, :create]
  end
end

privileges do
  privilege :manage do
    includes :index, :show, :new, :create, :edit, :update, :destroy
  end
end