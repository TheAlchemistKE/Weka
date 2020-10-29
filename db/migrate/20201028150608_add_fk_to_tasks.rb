class AddFkToTasks < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :group, null: true, foreign_key: true
  end
end
