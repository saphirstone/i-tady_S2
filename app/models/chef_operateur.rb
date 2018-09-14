class ChefOperateur < ApplicationRecord
    belongs_to :user, optional: true
end
