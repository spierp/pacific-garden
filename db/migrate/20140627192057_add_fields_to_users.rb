class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :image, :string
    add_column :users, :admin, :boolean
    add_column :users, :exec, :boolean
    add_column :users, :subcontractor, :boolean
    add_column :users, :other_non_hd, :boolean                 
  end
end
