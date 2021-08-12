class EventSerializer
  include JSONAPI::Serializer
  attributes :name, :ticket_link, :description, :lineup, :date, :venue_name, :city, :state
end
