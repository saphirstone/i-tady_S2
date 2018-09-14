class AddUserIdToProducteurs < ActiveRecord::Migration[5.0]
  def change
    add_column :producteurs, :user_id, :integer
  end
end
