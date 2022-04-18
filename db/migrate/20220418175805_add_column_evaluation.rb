class AddColumnEvaluation < ActiveRecord::Migration[6.0]
  def change
    add_column :evaluations, :presentation_id, :integer
  end
end
