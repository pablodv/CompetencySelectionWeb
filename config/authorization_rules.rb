authorization do
  role :admin do
    has_permission_on [:institutes, :specialties, :roles], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
    has_permission_on :users, :to => [:index, :show, :edit, :update, :new, :create]
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

