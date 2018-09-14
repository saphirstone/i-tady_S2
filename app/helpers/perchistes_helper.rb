module PerchistesHelper
    def perchiste_author(perchiste)
        user_signed_in? && current_user.id == perchiste.user_id
    end
end
