module ChefDeProjetWebsHelper
    def chef_de_projet_web_author(chef_de_projet_web)
        user_signed_in? && current_user.id == chef_de_projet_web.user_id
    end
end
