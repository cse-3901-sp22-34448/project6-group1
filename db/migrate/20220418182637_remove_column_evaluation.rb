class RemoveColumnEvaluation < ActiveRecord::Migration[6.0]
  def change
    remove_column :evaluations, :presentation_id
  end
end
