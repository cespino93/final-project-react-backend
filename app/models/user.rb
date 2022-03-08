class User < ApplicationRecord
    belongs_to :hometown, class_name:"Location"
    # Aliasing- Key value Pairs
    has_secure_password
    has_many :events
    has_many :attends, through: :events
    has_many :celebrities, through: :events
    has_many :locations, through: :events
    has_many :comments
end
