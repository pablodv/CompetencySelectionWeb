class Notifier < ActionMailer::Base
  default_url_options[:host] = "localhost:3000"

  def password_reset_instructions(user)
     subject       "Password Reset Instructions"
     from          "Blog <noreply@holidayreminder.com>"
     recipients    user.email
     sent_on       Time.now
     body          :edit_password_reset_url => edit_password_reset_url(user.perishable_token)
  end

  def activation_instructions(user)
    subject       "Activation Instructions"
    from          "noreply@lineasestudio.com"
    recipients    user.email
    sent_on       Time.now
    body          :account_activation_url => register_url(user.perishable_token)
  end

  def activation_confirmation(user)
    subject       "Activation Complete"
    from          "Blog <noreply@holidayreminder.com>"
    recipients    user.email
    sent_on       Time.now
    body          :root_url => root_url
  end

  def invitation(inviter, user)
    subject    'You have been invited to system'
    from       "Blog <noreply@holidayreminder.com>"
    recipients  user.email
    sent_on     Time.now
    body       :inviter => inviter, :user => user, :account_activation_url => register_url(user.perishable_token)
  end

end