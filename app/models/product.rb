class Product < ApplicationRecord
  has_one :laboratory_product
  has_one :laboratory, through: :laboratory_product

  has_many :pharmacy_products
  has_many :orders, through: :pharmacy_products

  validates :name, presence: true
end
