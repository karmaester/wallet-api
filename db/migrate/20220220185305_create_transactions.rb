class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.references :user, null: false, foreign_key: true
      t.string :from_currency
      t.string :to_currency
      t.decimal :sending_amount
      t.decimal :receiving_amount

      t.timestamps
    end
  end
end
