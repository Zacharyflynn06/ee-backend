class CartSerializer
  include JSONAPI::Serializer
  belongs_to :user
  attributes 
end
