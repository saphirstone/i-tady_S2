module ReferenceurWebsHelper
    def referenceur_web_author(referenceur_web)
        user_signed_in? && current_user.id == referenceur_web.user_id
    end
end
