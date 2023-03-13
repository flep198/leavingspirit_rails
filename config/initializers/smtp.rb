ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address: 'mail.gmx.net',
  port: 587,
  user_name: ENV['GMX_USERNAME'],
  password: ENV['GMX_PASSWORD'],
  authentication: :login,
  enable_starttls_auto: true
}