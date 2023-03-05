class Laboratory < ApplicationRecord
  has_many :laboratory_products
  has_many :orders

  has_many :pharmacies, through: :orders
  has_many :products, through: :orders

  validates :name, presence: true

  def most_succes_city_from_laboratory
    cities = {
      cities: []
    }

    orders.includes(:pharmacy).pluck(:pharmacy_id).sort.each_with_index do |id, index|
      pharmacy = Pharmacy.find_by(id:)

      cities[:cities] << {
        "City number #{index + 1}": pharmacy.city
      }
    end
    ap cities
    @most_succes_city_from_laboratory ||= pharmacies
  end

  def most_succes_pharmacy_from_laboratory
    pharmacies = {
      pharmacies: []
    }

    orders.includes(:pharmacy).pluck(:pharmacy_id).sort.take(3).each_with_index do |id, index|
      pharmacy = Pharmacy.find_by(id:)

      pharmacies[:pharmacies] << {
        "Pharmacy number #{index + 1}": pharmacy
      }
    end

    @most_succes_pharmacy_from_laboratory ||= pharmacies
  end
end
