class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :username
      t.string :password_digest
      t.belongs_to :gym, foreign_key:true

      t.timestamps
    end
  end
end
