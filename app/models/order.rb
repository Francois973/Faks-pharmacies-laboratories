class Order < ApplicationRecord
  belongs_to :laboratory
  belongs_to :pharmacy
  belongs_to :product
end
