class User < ActiveRecord::Base
  acts_as_authentic
  has_many :educations
  has_many :jobs
  has_many :assignments
  has_many :roles, :through => :assignments
  belongs_to :company
  accepts_nested_attributes_for :company
  
  has_friendly_id :login, :use_slug => true

  validates_presence_of :login, :first_name, :last_name, :email  

  has_attached_file :photo, :styles => { :small => "150x150>" },
                    :url  => "/assets/users/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/users/:id/:style/:basename.:extension"

#  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 2.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

  after_create :asign_role

  COUNTRY = []
  STATE   = []
  GENDER  = ['male', 'female']
  STATUS  = ['married', 'single']
  
  def role_symbols
    roles.map do |role|
      role.name.underscore.to_sym
    end
  end
  
  def asign_role
    if self.company.users.count == 1
      Assignment.create(:user_id => self.id, :role_id => Role.find_by_name('admin').id)
    else
      Assignment.create(:user_id => self.id, :role_id => Role.find_by_name('register').id)
    end
  end
  
  def activate!
    self.active = true
    save
  end

  def deliver_password_reset_instructions!
    reset_perishable_token!
    Notifier.deliver_password_reset_instructions(self)
  end

  def deliver_activation_instructions!
    reset_perishable_token!
    Notifier.deliver_activation_instructions(self)
  end

  def deliver_activation_confirmation!
    reset_perishable_token!
    Notifier.deliver_activation_confirmation(self)
  end

end
