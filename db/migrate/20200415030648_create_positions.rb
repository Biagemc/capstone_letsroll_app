class CreatePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions do |t|
      t.string :name
      t.string :url
      t.string :description
      t.integer :user_id
      t.string :situation

      t.timestamps
    end
  end
end
