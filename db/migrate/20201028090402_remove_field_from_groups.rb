class RemoveFieldFromGroups < ActiveRecord::Migration[6.0]
  def change
    remove_reference :groups, :task, null: false, foreign_key: true
  end
end
