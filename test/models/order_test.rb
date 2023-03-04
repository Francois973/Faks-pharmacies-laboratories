require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test 'should create order between pharmacy and laboratory' do
    pfizer_laboratory = Laboratory.create(name: 'Pfizer-Wyeth')
    grande_rue = Pharmacy.create(name: 'Pharmacie de la Grande Rue', city: 'Lyon')
    doliprane = Product.create!(name: 'Doliprane')

    LaboratoryProduct.create(product_id: doliprane.id, laboratory_id: pfizer_laboratory.id, quantity: 20, production_cost: 2,
                             average_price: 5)
    order = Order.create(pharmacy_id: grande_rue.id, laboratory_id: pfizer_laboratory.id, product_id: doliprane.id,
                         price: 4, quantity: 10)
    assert order.valid?
    assert_not_nil order.id
  end

  test 'should note create order because not enought stock in laboratory' do
    pfizer_laboratory = Laboratory.create(name: 'Pfizer-Wyeth')
    grande_rue = Pharmacy.create(name: 'Pharmacie de la Grande Rue', city: 'Lyon')
    doliprane = Product.create!(name: 'Doliprane')

    LaboratoryProduct.create(product_id: doliprane.id, laboratory_id: pfizer_laboratory.id, quantity: 2, production_cost: 2,
                             average_price: 5)
    order = Order.create(pharmacy_id: grande_rue.id, laboratory_id: pfizer_laboratory.id, product_id: doliprane.id,
                         price: 4, quantity: 10)
    assert_not order.valid?, 'Stock not enought'
    assert_nil order.id
  end
end
