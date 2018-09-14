class AddUserIdToChefOperateurs < ActiveRecord::Migration[5.0]
  def change
    add_column :chef_operateurs, :user_id, :integer
  end
end
