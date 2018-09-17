class AddUserIdToDevMobiles < ActiveRecord::Migration[5.0]
  def change
    add_column :dev_mobiles, :user_id, :integer
  end
end
