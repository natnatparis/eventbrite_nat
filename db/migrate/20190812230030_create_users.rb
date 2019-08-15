class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :encrypted_password
      t.text :description
      t.string :last_name
      t.string :fist_name
      t.string :email

      t.timestamps
    end
  end
end
