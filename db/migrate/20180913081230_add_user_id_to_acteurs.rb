class AddUserIdToActeurs < ActiveRecord::Migration[5.0]
  def change
    add_column :acteurs, :user_id, :integer
  end
end
