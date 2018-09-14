class AddUserIdToPerchistes < ActiveRecord::Migration[5.0]
  def change
    add_column :perchistes, :user_id, :integer
  end
end
