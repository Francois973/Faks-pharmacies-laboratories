class PharmacyProduct < ApplicationRecord
  belongs_to :product
  belongs_to :pharmacy

  validates :quantity, presence: true
end
