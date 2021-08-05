class UserSerializer
  include JSONAPI::Serializer

  has_one :cart

  has_many :orders

  attributes :username, :email, :first_name, :last_name, :role, :password_digest
end
