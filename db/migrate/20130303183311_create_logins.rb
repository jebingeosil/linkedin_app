class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :auth_key
      t.string :auth_secret

      t.timestamps
    end
  end
end
