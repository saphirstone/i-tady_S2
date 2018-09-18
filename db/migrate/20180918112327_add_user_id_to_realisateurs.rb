class AddUserIdToRealisateurs < ActiveRecord::Migration[5.0]
  def change
    add_column :realisateurs, :user_id, :integer
  end
end
