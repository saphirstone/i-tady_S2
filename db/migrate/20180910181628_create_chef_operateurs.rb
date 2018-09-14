class CreateChefOperateurs < ActiveRecord::Migration[5.0]
  def change
    create_table :chef_operateurs do |t|
      t.string :nom_et_prenom
      t.string :email
      t.text :info_carriere
      t.text :ambition

      t.timestamps
    end
  end
end
