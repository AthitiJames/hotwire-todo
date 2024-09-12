class ChangeUserIdToBeNullableInTodos < ActiveRecord::Migration[7.2]
  def change
    change_column_null :todos, :user_id, true  # อนุญาตให้ user_id เป็น nil ได้
  end
end
