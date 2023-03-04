class Laboratory < ApplicationRecord
  has_many :laboratory_products
  has_many :orders, through: :laboratory_products

  has_many :products
  validates :name, presence: true
end
