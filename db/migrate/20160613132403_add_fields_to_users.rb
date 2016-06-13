class AddFieldsToUsers < ActiveRecord::Migration
  def self.up
  	add_column :users, :first_name, :string, :default => ""
    add_column :users, :last_name, :string, :default => ""
    add_column :users, :username, :string, :default => ""
    add_column :users, :birth_date, :date
    add_column :users, :graduation_year, :string, :default => ""
    add_column :users, :work_place, :string, :default => ""
  end

  def self.down
  	remove_column :users, :first_name
  	remove_column :users, :last_name
  	remove_column :users, :username
  	remove_column :users, :birth_date
  	remove_column :users, :graduation_year
  	remove_column :users, :work_place
  end
end
