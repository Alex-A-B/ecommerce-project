class SelectedProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates :quantity, {presence: true}

  def price
    self.quantity * self.product.price
  end
end
