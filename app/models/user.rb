class User < ApplicationRecord
    has_one :cart
    has_many :orders

    enum role: [:guest, :admin]

    validates :username, presence: true, uniqueness: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true, uniqueness: true
end
