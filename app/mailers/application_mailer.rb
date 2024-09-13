class ApplicationMailer < ActionMailer::Base
  default from: "Todos <athitijames@gmail.com>"
  helper ApplicationHelper
  layout "mailer"
end
