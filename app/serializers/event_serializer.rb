class EventSerializer
  include JSONAPI::Serializer
  attributes :name, :ticket_link, :description, :lineup, :date, :venue, :city, :state
end
