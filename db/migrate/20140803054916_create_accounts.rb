class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name, default: ""
      t.float :balance, default: 0
      t.belongs_to :user
      t.timestamps
    end
  end
end
