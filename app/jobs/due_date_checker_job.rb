class DueDateCheckerJob < ApplicationJob
  queue_as :default
  def perform
    # todos_due_today = Todo.where('due_date = ?', Date.current)
    todos_due_today = Todo.where('due_date = ?', Date.current)

    todos_due_today.each do |todo|
      user = todo.user
      UserMailer.due_date_email(user, todo).deliver_now
    end
  end
end
