class CreateScriptes < ActiveRecord::Migration[5.0]
  def change
    create_table :scriptes do |t|
      t.string :nom_et_prenom
      t.string :numero
      t.string :email
      t.text :info_carriere
      t.text :specialite
      t.text :ambition

      t.timestamps
    end
  end
end
