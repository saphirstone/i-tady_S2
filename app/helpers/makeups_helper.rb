module MakeupsHelper
    def makeup_author(makeup)
        user_signed_in? && current_user.id == makeup.user_id
    end
end
