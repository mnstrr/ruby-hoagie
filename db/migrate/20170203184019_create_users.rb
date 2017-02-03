class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.timestamps
      t.string :username
      t.string :email
      t.string :encrypted_password
      t.string :salt
    end
  end
end
