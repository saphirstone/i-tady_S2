module ActeursHelper
    def acteur_author(acteur)
        user_signed_in? && current_user.id == acteur.user_id
    end
end
