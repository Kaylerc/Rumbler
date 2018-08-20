class CreateUsersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :username
      t.string :password_hash
      t.date :birthday
      t.datetime :created_at
      t.datetime :updated_at
    end
    add_index :users, :email, unique: true
  end
end
