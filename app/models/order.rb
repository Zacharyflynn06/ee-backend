class Order < ApplicationRecord
  belongs_to :user
  
  has_many :product_orders
  has_many :products, through: :product_orders

  # validates :order_time, presence: true
  # validates :carrier, presence: true
  # validates :tracking_number, presence: true
  # validates :fulfilled, presence: true
  # validates :total, presence: true
end
