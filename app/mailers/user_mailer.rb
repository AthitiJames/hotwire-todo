class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def due_date_email(user, todo)
    @user = user
    @todo = todo
    mail(to: @user.email, subject: 'Your Todo has reached its due date!')
  end
end
