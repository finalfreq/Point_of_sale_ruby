class Antique < ActiveRecord::Base
  belongs_to(:order)
  scope :inventory, -> { where(purchased: false) }
  scope :ordered, -> { where(order_id: order.id)}
  validates :description, {presence: true, length: {maximum: 25}}
  validates :cost,  numericality: {greater_than: 0}
end
