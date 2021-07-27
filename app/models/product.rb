class Product < ApplicationRecord
    has_many :cart_products
    has_many :carts, through: :cart_products

    has_many :product_orders
    has_many :orders, through: :product_orders

    has_one_attached :avatar

    validates :name, presence: :true, uniqueness: :true
    validates :price, numericallity: true
    validates :description, presence: true

    
end
