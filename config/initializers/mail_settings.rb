ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "producer.com",
  :user_name            => "contact",
  :password             => "secret",
  :authentication       => "plain",
  :enable_starttls_auto => true
}