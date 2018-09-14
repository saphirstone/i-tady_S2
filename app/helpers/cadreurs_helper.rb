module CadreursHelper
    def cadreur_author(cadreur)
        user_signed_in? && current_user.id == cadreur.user_id
    end
end
