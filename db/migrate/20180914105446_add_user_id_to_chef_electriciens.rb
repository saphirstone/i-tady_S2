class AddUserIdToChefElectriciens < ActiveRecord::Migration[5.0]
  def change
    add_column :chef_electriciens, :user_id, :integer
  end
end
