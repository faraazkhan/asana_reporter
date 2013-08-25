class AddSyncInProgressFlagToAsanaAccounts < ActiveRecord::Migration
  def change
    add_column :asana_accounts, :sync_in_progress, :boolean
  end
end
