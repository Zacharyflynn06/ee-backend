class UserSerializer
  include JSONAPI::Serializer

  has_one :cart

  has_many :orders

  attributes  :email, :first_name, :last_name, :role

  
end
