module VfxesHelper
    def vfx_author(vfx)
        user_signed_in? && current_user.id == vfx.user_id
    end
end
