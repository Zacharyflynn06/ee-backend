class EventSerializer
  include JSONAPI::Serializer
  attributes :name, :ticket_link, :price, :description, :lineup, :date, :venue, :city, :state
end
