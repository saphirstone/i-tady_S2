module ChefDecorateursHelper
    def chef_decorateur_author(chef_decorateur)
        user_signed_in? && current_user.id == chef_decorateur.user_id
    end
end
