class AddUserIdToFlashDesigners < ActiveRecord::Migration[5.0]
  def change
    add_column :flash_designers, :user_id, :integer
  end
end
