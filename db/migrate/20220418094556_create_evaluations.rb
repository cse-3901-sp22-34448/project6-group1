class CreateEvaluations < ActiveRecord::Migration[6.0]
  def change
    create_table :evaluations do |t|
      t.string :user_name
      t.string :presentation_name
      t.float :Scores
      t.text :comment

      t.timestamps
    end
  end
end
