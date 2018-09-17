class IntegrateurWeb < ApplicationRecord
    belongs_to :user, optional: true    
end
