# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActiveMailer::Base.smtp_settings = {
  :port           => ENV['MAILGUN_SMTP_PORT'],
  :address        => ENV['MAILGUN_SMTP_SERVER'],
  :username       => ENV['MAILGUN_SMTP_LOGIN'],
  :password       => ENV[MAILGUN_SMTP_SERVER],
  :domain         => 'tranquil-waters-66318.herokuapp.com',
  :authentication => :plain, 
}
ActionMailer::Base.deliviery_method = :smtp 