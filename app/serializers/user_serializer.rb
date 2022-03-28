class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :name
  has_many :events, serializer: EventSerializer
  attributes :hometown do |user|
    {
      city: user.hometown.city,
      state: user.hometown.state,
      country: user.hometown.country
    }
  end 
end
