class Camper < ApplicationRecord
    has_many :plays
    has_many :activities, through: :plays
    validates :name, uniqueness: true
end
