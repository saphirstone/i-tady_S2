class AddUserIdToIntegrateurWebs < ActiveRecord::Migration[5.0]
  def change
    add_column :integrateur_webs, :user_id, :integer
  end
end
