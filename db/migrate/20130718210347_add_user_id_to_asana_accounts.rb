class AddUserIdToAsanaAccounts < ActiveRecord::Migration
  def change
    add_column :asana_accounts, :user_id, :integer
  end
end
