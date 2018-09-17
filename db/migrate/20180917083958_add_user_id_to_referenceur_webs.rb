class AddUserIdToReferenceurWebs < ActiveRecord::Migration[5.0]
  def change
    add_column :referenceur_webs, :user_id, :integer
  end
end
