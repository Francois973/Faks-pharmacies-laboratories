class Product < ApplicationRecord
  has_one :laboratory_product
  has_one :laboratory, through: :laboratory_product

  has_many :pharmacy_products
  has_many :orders, through: :pharmacy_products

  validates :name, presence: true

  def self.most_profiable_products(id)
    labo = Laboratory.find_by(id:)
    list_product = []

    labo.laboratory_products.each do |element|
      list_product << {
        name: find_name_product(element.product_id),
        cost: element.production_cost,
        average_price: element.average_price,
        margin: element.average_price - element.production_cost
      }
    end
    list_product
  end

  def self.find_name_product(id)
    find_by(id:).name
  end
end
