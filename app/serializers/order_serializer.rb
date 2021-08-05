class OrderSerializer
  include JSONAPI::Serializer

  belongs_to :user
  attributes 
end
