module ChefElectriciensHelper
    def chef_electricien_author(chef_electricien)
        user_signed_in? && current_user.id == chef_electricien.user_id
    end
end
