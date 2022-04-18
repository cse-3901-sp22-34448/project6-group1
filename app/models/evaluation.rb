class Evaluation < ApplicationRecord
    belongs_to :user
    belongs_to :presentation, :optional=>true
end
