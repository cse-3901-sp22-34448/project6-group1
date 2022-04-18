class AddUserIdToEvaluations < ActiveRecord::Migration[6.0]
  def change
    add_column :evaluations, :user_id, :integer
    add_index :evaluations, :user_id
  end
end
