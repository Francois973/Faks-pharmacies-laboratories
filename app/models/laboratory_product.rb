class LaboratoryProduct < ApplicationRecord
  belongs_to :laboratory
  belongs_to :product
end
