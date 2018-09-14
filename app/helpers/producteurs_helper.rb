module ProducteursHelper
    def producteur_author(producteur)
        user_signed_in? && current_user.id == producteur.user_id
    end
end
