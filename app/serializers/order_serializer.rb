class OrderSerializer
  include JSONAPI::Serializer

  belongs_to :user
  attributes :order_time, :carrier, :tracking_number, :fulfilled, :total
end
