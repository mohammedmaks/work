class ApplicationMailer < ActionMailer::Base
  default to: "ussu@surrey.ac.uk", from: 'lm01081@surrey.ac.uk'
  layout 'mailer'
end
