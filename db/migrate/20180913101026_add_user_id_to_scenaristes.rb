class AddUserIdToScenaristes < ActiveRecord::Migration[5.0]
  def change
    add_column :scenaristes, :user_id, :integer
  end
end
