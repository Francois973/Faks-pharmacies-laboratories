class Sale < ApplicationRecord
  belongs_to :pharmacy
  belongs_to :pharmacy_products

  validates :quantity, presence: true
  validates :price, presence: true
  validates :date, presence: true
end
