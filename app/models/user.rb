class User < ApplicationRecord
    has_secure_password

    belongs_to :hometown, class_name:"Location"
    # Aliasing- Key value Pairs
end
