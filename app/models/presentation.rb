class Presentation < ApplicationRecord
    has_many :evaluations 
    belongs_to :user
end
