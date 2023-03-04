class Sale < ApplicationRecord
  belongs_to :pharmacy
  belongs_to :pharmacy_product

  validates :quantity, presence: true
  validates :price, presence: true
  validate :not_enough_stock
  after_commit :quantity_product_pharmacy

  private

  def not_enough_stock
    errors.add('Not enough stock') if pharmacy_product.quantity < quantity
  end

  def quantity_product_pharmacy
    update_quantity = {
      quantity: pharmacy_product.quantity - quantity
    }
    pharmacy_product.update(update_quantity)
  end
end
