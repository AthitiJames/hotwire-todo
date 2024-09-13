class UserMailer < ApplicationMailer

  def due_date_email(user, todo)
    @user = user
    @todo = todo
    mail(to: @user.email, subject: 'Reminder: Your Todo is Due Today!')
  end

  def test_email(user)
    @user = user
    mail(to: @user.email, subject: 'Test Email from Rails')
  end
end
