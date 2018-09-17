module WebDesignersHelper
    def web_designer_author(web_designer)
        user_signed_in? && current_user.id == web_designer.user_id
    end
end
