class CreateDirphots < ActiveRecord::Migration[5.0]
  def change
    create_table :dirphots do |t|
      t.string :nom_et_prenom
      t.string :numero
      t.string :email
      t.text :info_carriere
      t.text :ambition
      t.string :equipement
      t.string :specialite

      t.timestamps
    end
  end
end
