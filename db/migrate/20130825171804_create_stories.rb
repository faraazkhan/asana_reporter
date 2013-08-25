class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.integer :asana_id
      t.integer :task_id
      t.boolean :section_event
      t.string :name
      t.integer :performed_by_id
      t.datetime :performed_at
      t.string :original_section_name
      t.string :final_section_name

      t.timestamps
    end
  end
end
