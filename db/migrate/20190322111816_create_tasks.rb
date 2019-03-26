class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|

      t.timestamps
      t.string :name
      t.string :description

      t.integer :user_id
      t.integer :project_id
      
    end
  end
end
