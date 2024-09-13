class DueDateCheckerJob < ApplicationJob
  queue_as :default

  def perform
    # ค้นหา todos ที่ due_date ภายในวันนี้
    todos_due_today = Todo.where(due_date: Time.current.beginning_of_day..Time.current.end_of_day)

    todos_due_today.each do |todo|
      user = todo.user  # ตอนนี้สามารถเรียก user จาก todo ได้แล้ว
      UserMailer.due_date_email(user, todo).deliver_now  # ส่งอีเมลแจ้งเตือน
    end
  end
end
