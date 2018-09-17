class AddUserIdToPhotographes < ActiveRecord::Migration[5.0]
  def change
    add_column :photographes, :user_id, :integer
  end
end
