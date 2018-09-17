class AddUserIdToDirecteurDeProdss < ActiveRecord::Migration[5.0]
  def change
    add_column :directeur_de_prods, :user_id, :integer
  end
end
