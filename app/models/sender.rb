class Sender < ApplicationRecord
  has_many :delivery_orders
  has_many :receivers, through: :delivery_orders
end
