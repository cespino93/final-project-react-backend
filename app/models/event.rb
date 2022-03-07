class Event < ApplicationRecord
    belongs_to :user
    has_many :attended
    has_many :celebrities, through: :attended
    has_many :locations, through: :celebrities

end
