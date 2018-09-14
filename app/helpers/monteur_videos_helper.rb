module MonteurVideosHelper
    def monteur_video_author(monteur_video)
        user_signed_in? && current_user.id == monteur_video.user_id
    end
end
