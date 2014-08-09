class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.string :title
      t.decimal :amount, precision: 8, scale: 2
      t.string :status
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
