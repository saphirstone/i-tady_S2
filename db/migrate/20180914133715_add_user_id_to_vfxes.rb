class AddUserIdToVfxes < ActiveRecord::Migration[5.0]
  def change
    add_column :vfxes, :user_id, :integer
  end
end
