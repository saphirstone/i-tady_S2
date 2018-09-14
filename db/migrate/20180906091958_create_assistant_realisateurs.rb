class CreateAssistantRealisateurs < ActiveRecord::Migration[5.0]
  def change
    create_table :assistant_realisateurs do |t|
      t.string :nom_et_prenom
      t.string :email
      t.text :info_carriere
      t.text :ambition
      t.text :projet

      t.timestamps
    end
  end
end
