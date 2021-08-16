class Product < ApplicationRecord
    include Rails.application.routes.url_helpers

    has_many :cart_products
    has_many :carts, through: :cart_products

    has_many :product_orders
    has_many :orders, through: :product_orders

    has_one_attached :image

    # validates :name, presence: :true, uniqueness: :true
    # validates :price, numericality: true
    # validates :description, presence: true

    def image_url
        url_for(self.image)
    end

    
end
