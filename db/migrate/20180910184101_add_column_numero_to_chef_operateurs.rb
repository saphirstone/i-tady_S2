class AddColumnNumeroToChefOperateurs < ActiveRecord::Migration[5.0]
  def change
    add_column :chef_operateurs, :numero, :string
  end
end
