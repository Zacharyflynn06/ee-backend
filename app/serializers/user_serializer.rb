class UserSerializer
  include JSONAPI::Serializer
  attributes :username, :email, :first_name, :last_name, :role
end
