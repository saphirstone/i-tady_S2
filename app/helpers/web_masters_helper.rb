module WebMastersHelper
    def web_master_author(web_master)
        user_signed_in? && current_user.id == web_master.user_id
    end
end
