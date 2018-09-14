module ScriptesHelper
    def scripte_author(scripte)
        user_signed_in? && current_user.id == scripte.user_id
    end
end
