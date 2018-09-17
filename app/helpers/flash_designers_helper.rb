module FlashDesignersHelper
    def flash_designer_author(flash_designer)
        user_signed_in? && current_user.id == flash_designer.user_id
    end
end
