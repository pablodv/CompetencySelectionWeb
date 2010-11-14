class UserSession < Authlogic::Session::Base
  attr_accessor :company_login
end