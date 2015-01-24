class AddColumnsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :program, :string
  	add_column :users, :current_status, :string
  	add_column :users, :location, :string
  	add_column :users, :description, :string
  end
end
