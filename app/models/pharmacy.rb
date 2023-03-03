class Pharmacy < ApplicationRecord
  validates :name, presence: true
  validates :city, presence: true

  scope :by_city, ->(city) { where(city:) }
end
