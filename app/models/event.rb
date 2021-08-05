class Event < ApplicationRecord
    has_one_attached :image

    validates :name, presence: true, uniqueness: true
    validates :ticket_link, presence: true
    validates :price, presence: true
    validates :description, presence: true, uniqueness: true
    validates :date, presence: true
    validates :time, presence: true
    validates :venue, presence: true
    validates :city, presence: true
    validates :state, presence: true
end
