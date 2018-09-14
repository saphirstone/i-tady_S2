module AssistantRealisateursHelper
    def assistant_realisateur_author(assistant_realisateur)
        user_signed_in? && current_user.id == assistant_realisateur.user_id
    end
end
