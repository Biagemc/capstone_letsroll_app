class CreateFavourites < ActiveRecord::Migration[6.0]
  def change
    create_table :favourites do |t|
      t.integer :user_id
      t.integer :position_id

      t.timestamps
    end
  end
end
