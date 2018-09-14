module DirphotsHelper
    def dirphot_author(dirphot)
        user_signed_in? && current_user.id == dirphot.user_id
    end
end
