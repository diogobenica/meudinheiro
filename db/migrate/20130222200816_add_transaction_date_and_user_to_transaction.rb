class AddTransactionDateAndUserToTransaction < ActiveRecord::Migration
  def change
    change_table :transactions do |t|
      t.datetime :transaction_date
      t.references :user
    end
  end
end
