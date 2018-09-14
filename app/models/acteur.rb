class Acteur < ApplicationRecord
    belongs_to :user, optional: true  
end
