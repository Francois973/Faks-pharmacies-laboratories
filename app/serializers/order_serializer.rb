class OrderSerializer < ActiveModel::Serializer
  attributes :laboratory_id, :pharmacy_id, :product_id, :quantity, :price
end
