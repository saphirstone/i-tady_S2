class AddUserIdToChefDecorateur < ActiveRecord::Migration[5.0]
  def change
    add_column :chef_decorateurs, :user_id, :integer
  end
end
