class Activity < ApplicationRecord
    has_many :plays
    has_many :campers, through: :plays
end
