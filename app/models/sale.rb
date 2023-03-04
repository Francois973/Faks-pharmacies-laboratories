class Sale < ApplicationRecord
  belongs_to :pharmacy
  belongs_to :pharmacy_product
end
