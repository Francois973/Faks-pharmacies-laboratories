class Order < ApplicationRecord
  belongs_to :laboratory
  belongs_to :pharmacy
  belongs_to :product

  validates :quantity, presence: true
  validates :price, presence: true
  validate :not_enough_stock
  after_commit :quantity_product_laboratory

  private

  def not_enough_stock
    laboratory.laboratory_products.where(product_id:).each do |element|
      next errors.add('Not enough stock') if quantity > element.quantity
    end
  end

  def quantity_product_laboratory
    laboratory.laboratory_products.where(product_id:).each do |element|
      update_quantity = {
        quantity: element.quantity - quantity
      }
      element.update(update_quantity)
    end
  end
end
