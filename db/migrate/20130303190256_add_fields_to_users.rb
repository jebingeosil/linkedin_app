class AddFieldsToUsers < ActiveRecord::Migration
  def change
	add_column :users,:auth_key,:string
	add_column :users,:auth_secret,:string
	add_column :users,:user_id,:string
  end
end
