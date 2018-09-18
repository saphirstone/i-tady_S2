class Realisateur < ApplicationRecord
    belongs_to :user, optional: true
end
