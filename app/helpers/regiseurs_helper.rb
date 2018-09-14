module RegiseursHelper
    def regiseur_author(regiseur)
        user_signed_in? && current_user.id == regiseur.user_id
    end
end
