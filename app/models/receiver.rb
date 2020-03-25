class Receiver < ApplicationRecord
  has_many :delivery_orders
  has_many :senders, through: :delivery_orders
end
