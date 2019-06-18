class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :username
      t.string :password_digest
      t.integer :age

      t.timestamps
    end
  end
end
