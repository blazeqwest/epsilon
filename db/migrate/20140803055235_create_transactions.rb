class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.float :amount, default: 0
      t.belongs_to :account
      t.timestamps
    end
  end
end
