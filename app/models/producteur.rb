class Producteur < ApplicationRecord
    belongs_to :user, optional: true
end
