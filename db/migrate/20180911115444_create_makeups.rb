class CreateMakeups < ActiveRecord::Migration[5.0]
  def change
    create_table :makeups do |t|
      t.string :nom_et_prenom
      t.string :email
      t.string :equipe
      t.text :info_carriere
      t.text :ambition
      t.string :specialite

      t.timestamps
    end
  end
end
