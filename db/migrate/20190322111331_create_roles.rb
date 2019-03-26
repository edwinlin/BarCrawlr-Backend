class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|

      t.timestamps
      t.string :title
      t.integer :rank

      t.integer :user_id
      t.integer :organization_id

    end
  end
end
