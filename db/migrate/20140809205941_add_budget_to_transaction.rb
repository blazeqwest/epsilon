class AddBudgetToTransaction < ActiveRecord::Migration
  def change
  	 add_reference :transactions, :budget, index: true
  end
end
