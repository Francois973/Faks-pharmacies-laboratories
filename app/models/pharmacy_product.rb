class PharmacyProduct < ApplicationRecord
  belongs_to :product
  belongs_to :pharmacy

  validates :quantity, presence: true

  def self.most_succes_city_from_laboratory(id)
    ap laboratory = Laboratory.find_by(id:)
    binding.pry
  end
end
