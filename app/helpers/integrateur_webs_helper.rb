module IntegrateurWebsHelper
    def integrateur_web_author(integrateur_web)
        user_signed_in? && current_user.id == integrateur_web.user_id
    end
end
