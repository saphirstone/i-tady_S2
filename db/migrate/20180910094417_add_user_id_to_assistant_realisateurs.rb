class AddUserIdToAssistantRealisateurs < ActiveRecord::Migration[5.0]
  def change
    add_column :assistant_realisateurs, :user_id, :integer
  end
end
