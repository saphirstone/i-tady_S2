class AddUserIdToDirphots < ActiveRecord::Migration[5.0]
  def change
    add_column :dirphots, :user_id, :integer
  end
end
