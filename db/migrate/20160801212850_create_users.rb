class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
        t.string :username, null: false
        t.string :first_name
        t.string :last_name
        t.string :email
        t.string :password_digest

        t.timestamps null:false
    end
    add_index :users, :username, unique:true
  end
end