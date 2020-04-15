class CreatePositionTags < ActiveRecord::Migration[6.0]
  def change
    create_table :position_tags do |t|
      t.integer :tag_id
      t.integer :position_id

      t.timestamps
    end
  end
end
