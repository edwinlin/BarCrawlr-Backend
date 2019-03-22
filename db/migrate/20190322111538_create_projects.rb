class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|

      t.timestamps
      t.string :name
      t.integer :org_id
      
    end
  end
end
