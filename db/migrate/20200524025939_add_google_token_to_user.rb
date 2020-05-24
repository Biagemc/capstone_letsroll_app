class AddGoogleTokenToUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :roll_time, :integer
  end
end
