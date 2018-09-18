module RealisateursHelper
    def realisateur_author(realisateur)
        user_signed_in? && current_user.id == realisateur.user_id
    end
end
