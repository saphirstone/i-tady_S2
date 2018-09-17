class AddUserIdToIngeSons < ActiveRecord::Migration[5.0]
  def change
    add_column :inge_sons, :user_id, :integer
  end
end
