class AddUserIdToChefDeProjetWebs < ActiveRecord::Migration[5.0]
  def change
    add_column :chef_de_projet_webs, :user_id, :integer
  end
end
