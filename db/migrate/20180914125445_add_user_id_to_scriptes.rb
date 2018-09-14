class AddUserIdToScriptes < ActiveRecord::Migration[5.0]
  def change
    add_column :scriptes, :user_id, :integer
  end
end
