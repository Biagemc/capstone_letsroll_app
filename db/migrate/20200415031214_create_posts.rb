class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :post
      t.integer :position_id

      t.timestamps
    end
  end
end
