class ChefDeProjetWeb < ApplicationRecord
    belongs_to :user, optional: true    
end
