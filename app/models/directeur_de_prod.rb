class DirecteurDeProd < ApplicationRecord
    belongs_to :user, optional: true    
end
