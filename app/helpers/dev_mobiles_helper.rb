module DevMobilesHelper
    def dev_mobile_author(dev_mobile)
        user_signed_in? && current_user.id == dev_mobile.user_id
    end
end
