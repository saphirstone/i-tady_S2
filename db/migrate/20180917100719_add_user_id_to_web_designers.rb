class AddUserIdToWebDesigners < ActiveRecord::Migration[5.0]
  def change
    add_column :web_designers, :user_id, :integer
  end
end
