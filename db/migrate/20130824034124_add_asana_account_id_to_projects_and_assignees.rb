class AddAsanaAccountIdToProjectsAndAssignees < ActiveRecord::Migration
  def change
    add_column :projects, :asana_account_id, :integer
    add_column :assignees, :asana_account_id, :integer
  end
end
