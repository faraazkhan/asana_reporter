class CreateAsanaAccounts < ActiveRecord::Migration
  def change
    create_table :asana_accounts do |t|
      t.string :api_key
      t.timestamps
    end
  end
end
