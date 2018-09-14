module ScenaristesHelper
    def scenariste_author(scenariste)
        user_signed_in? && current_user.id == scenariste.user_id
    end
end
