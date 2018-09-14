class Scenariste < ApplicationRecord
    belongs_to :user, optional: true    
end
