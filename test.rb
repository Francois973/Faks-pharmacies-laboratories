# class Pharmacy
#   has_many :pharmacy_products
#   has_many :orders, through: :pharmacy_products
#   validates :name, presence: true
#   validates :city, presence: true
# end

# class Laboratory
#   has_many :laboratory_products
#   has_many :orders, through: :laboratory_products
#   validates :name, presence: true
# end

# class Product
#   has_one :laboratory_product
#   has_one :laboratory, through: :laboratory_product

#   has_many :pharmacy_products
#   has_many :orders, through: :pharmacy_products
#   validates :name, presence: true
# end

# class LaboratoryProduct
#   belongs_to :laboratory
#   belongs_to :product

#   validates :quantity, presence: true
#   validates :production_cost, presence: true
# end

# class PharmacyProduct
#   belongs_to :pharmacy
#   belongs_to :product

#   validates :quantity, presence: true
# end

class Order
  belongs_to :laboratory
  belongs_to :pharmacy
  belongs_to :product

  validates :quantity, presence: true
  validates :price, presence: true
end

class Sale
  belongs_to :pharmacy
  belongs_to :pharmacy_products

  validates :quantity, presence: true
  validates :price, presence: true
  validates :date, presence: true
end
