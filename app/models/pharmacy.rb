class Pharmacy < ApplicationRecord
  has_many :pharmacy_products
  has_many :orders

  validates :name, presence: true
  validates :city, presence: true

  scope :by_city, ->(city) { where(city:) }
end
