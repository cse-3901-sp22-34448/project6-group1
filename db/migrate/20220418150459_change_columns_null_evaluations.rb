class ChangeColumnsNullEvaluations < ActiveRecord::Migration[6.0]
  def change
     change_column :evaluations, :Scores, :integer, null: false
     change_column_null :evaluations, :presentation_name, false
  end
end
