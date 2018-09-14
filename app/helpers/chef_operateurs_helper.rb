module ChefOperateursHelper
    def chef_operateur_author(chef_operateur)
        user_signed_in? && current_user.id == chef_operateur.user_id
    end
end
