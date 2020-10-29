class AddForeignKeyTasksToGroups < ActiveRecord::Migration[6.0]
  def change
    add_reference :groups, :task, null: false, foreign_key: true
  end
end
