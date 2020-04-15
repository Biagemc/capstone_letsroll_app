class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :city
      t.string :gym
      t.string :afiliation
      t.string :avatar
      t.integer :roll_time
      t.string :belt

      t.timestamps
    end
  end
end
