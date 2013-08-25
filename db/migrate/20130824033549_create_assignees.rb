class CreateAssignees < ActiveRecord::Migration
  def change
    create_table :assignees do |t|
      t.integer :asana_id
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
