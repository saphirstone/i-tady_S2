module IngeSonsHelper
    def inge_son_author(inge_son)
        user_signed_in? && current_user.id == inge_son.user_id
    end
end
