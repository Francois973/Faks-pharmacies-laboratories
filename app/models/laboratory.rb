class Laboratory < ApplicationRecord
  has_many :laboratory_products
  has_many :orders
  has_many :pharmacies, through: :orders
  has_many :products, through: :orders
  validates :name, presence: true

  def most_succes_city_from_laboratory
    orders.group_by(&:pharmacy).sort_by { |group| group[1].count }.map { |city| city[0].city }
  end
end
