class AddNumeroToAssistantRealisateurs < ActiveRecord::Migration[5.0]
  def change
    add_column :assistant_realisateurs, :numero, :string
  end
end
