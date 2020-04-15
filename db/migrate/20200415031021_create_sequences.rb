class CreateSequences < ActiveRecord::Migration[6.0]
  def change
    create_table :sequences do |t|
      t.string :name
      t.integer :position_id
      t.integer :user_id

      t.timestamps
    end
  end
end
