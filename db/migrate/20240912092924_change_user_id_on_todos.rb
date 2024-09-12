class ChangeUserIdOnTodos < ActiveRecord::Migration[6.1]
  def change
    change_column_null :todos, :user_id, false  # เปลี่ยนให้ user_id ห้ามเป็น NULL
  end
end
