require 'test_helper'

class LaboratoryProductTest < ActiveSupport::TestCase
  test 'quantity cannot be negative' do
    pfizer_laboratory = Laboratory.create(name: 'Pfizer-Wyeth')
    grande_rue = Pharmacy.create(name: 'Pharmacie de la Grande Rue', city: 'Lyon')
    doliprane = Product.create!(name: 'Doliprane')

    stock = LaboratoryProduct.create(product_id: doliprane.id, laboratory_id: pfizer_laboratory.id, quantity: -2, production_cost: 2,
                                     average_price: 5)

    assert_not stock.valid?
  end
end
