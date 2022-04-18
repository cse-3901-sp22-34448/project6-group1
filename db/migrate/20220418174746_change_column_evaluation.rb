class ChangeColumnEvaluation < ActiveRecord::Migration[6.0]
  def change
    remove_column :evaluations, :presentation_name
  end
end
