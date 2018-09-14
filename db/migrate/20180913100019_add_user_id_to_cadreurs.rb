class AddUserIdToCadreurs < ActiveRecord::Migration[5.0]
  def change
    add_column :cadreurs, :user_id, :integer
  end
end
