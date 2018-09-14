class AddUserIdToRegiseurs < ActiveRecord::Migration[5.0]
  def change
    add_column :regiseurs, :user_id, :integer
  end
end
