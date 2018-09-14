class AddUserIdToMonteurVideos < ActiveRecord::Migration[5.0]
  def change
    add_column :monteur_videos, :user_id, :integer
  end
end
