class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|

      t.timestamps
      t.string :name
      
    end
  end
end
