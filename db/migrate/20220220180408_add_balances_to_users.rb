class AddBalancesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :dollar_balance, :decimal
    add_column :users, :bitcoin_balance, :decimal
  end
end
