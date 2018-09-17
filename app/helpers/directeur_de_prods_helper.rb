module DirecteurDeProdsHelper
    def directeur_de_prod_author(directeur_de_prod)
        user_signed_in? && current_user.id == directeur_de_prod.user_id
    end
end
