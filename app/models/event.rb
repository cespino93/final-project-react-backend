class Event < ApplicationRecord
    belongs_to :user
    has_many :attends
    has_many :celebrities, through: :attends
    has_many :locations, through: :celebrities

end
