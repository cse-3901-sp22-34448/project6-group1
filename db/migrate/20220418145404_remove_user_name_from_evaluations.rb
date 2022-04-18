class RemoveUserNameFromEvaluations < ActiveRecord::Migration[6.0]
  def change
    remove_column :evaluations, :user_name
  end
end
