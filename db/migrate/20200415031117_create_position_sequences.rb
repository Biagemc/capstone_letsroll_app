class CreatePositionSequences < ActiveRecord::Migration[6.0]
  def change
    create_table :position_sequences do |t|
      t.integer :position_id
      t.integer :sequence_id
      t.integer :rank

      t.timestamps
    end
  end
end
