class AddUserIdToWebMasters < ActiveRecord::Migration[5.0]
  def change
    add_column :web_masters, :user_id, :integer
  end
end
