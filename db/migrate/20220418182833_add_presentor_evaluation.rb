class AddPresentorEvaluation < ActiveRecord::Migration[6.0]
  def change
    add_column :evaluations, :presentation_name, :string
  end
end

