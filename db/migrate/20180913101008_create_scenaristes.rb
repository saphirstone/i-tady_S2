class CreateScenaristes < ActiveRecord::Migration[5.0]
  def change
    create_table :scenaristes do |t|
      t.string :nom_et_prenom
      t.string :numero
      t.string :email
      t.text :info_carriere
      t.text :ambition
      t.string :specialite

      t.timestamps
    end
  end
end
