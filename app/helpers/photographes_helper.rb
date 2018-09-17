module PhotographesHelper
    def photographe_author(photographe)
        user_signed_in? && current_user.id == photographe.user_id
    end
end
