class CreatePresentations < ActiveRecord::Migration[6.0]
  def change
    create_table :presentations do |t|
      t.string :name ,null: false
      t.integer :class_infos_id
      t.integer :user_id 

      t.timestamps
    end
    add_index :presentations, :class_infos_id
    add_index :presentations, :user_id
  end
end
