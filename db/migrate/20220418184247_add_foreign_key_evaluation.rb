class AddForeignKeyEvaluation < ActiveRecord::Migration[6.0]
  def change
    add_reference :evaluations, :presentations
  end
end
