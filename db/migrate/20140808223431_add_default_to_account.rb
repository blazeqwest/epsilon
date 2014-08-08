class AddDefaultToAccount < ActiveRecord::Migration
  def change
  	add_column :accounts, :main, :boolean, default: false 
  end
end
