if Rails.env.development?

  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    address:               "smtp.gmail.com",
    port:                  587,
    domain:                'gmail.com',
    user_name:             Figaro.env.gmail_username_dev,
    password:              Figaro.env.gmail_password_dev,
    authentication:        'plain',
    enable_starttls_auto:  true
  }

elsif Rails.env.production?

  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    address:                'smtp.sendgrid.net',
    port:                   587,
    domain:                 'heroku.com',
    user_name:              ENV['SENDGRID_USERNAME'],
    password:               ENV['SENDGRID_PASSWORD'],
    authenitcation:         'plain',
    enable_starttls_auto:   true
  }

end
