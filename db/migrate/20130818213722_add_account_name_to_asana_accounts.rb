class AddAccountNameToAsanaAccounts < ActiveRecord::Migration
  def change
    add_column :asana_accounts, :account_name, :string
  end
end
