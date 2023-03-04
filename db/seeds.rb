Order.destroy_all
LaboratoryProduct.destroy_all
Product.destroy_all
Pharmacy.destroy_all
Laboratory.destroy_all

pfizer = Laboratory.create(name: 'Pfizer-Wyeth')
merck = Laboratory.create(name: 'Merck & Co')
abbott = Laboratory.create(name: 'Abbott')
johnson = Laboratory.create(name: 'Johnson & Johnson')
bristol = Laboratory.create(name: 'Bristol-Mers-Squibb')
eli = Laboratory.create(name: 'Eli Lilly')
amgen = Laboratory.create(name: 'Amgen')
sanofi = Laboratory.create(name: 'Sanofi-Aventis')

Pharmacy.create(name: 'Pharmacie de la Grande Rue', city: 'Lyon')
Pharmacy.create(name: 'Pharmacie Perrache', city: 'Lyon')
Pharmacy.create(name: 'Pharmacie Villerbanne', city: 'Lyon')
Pharmacy.create(name: 'Farmacity', city: 'Marseille')
Pharmacy.create(name: 'La Pharmacie Populaire', city: 'Montpellier')
Pharmacy.create(name: 'La Pharmacie Familliale', city: 'Grenoble')
Pharmacy.create(name: 'Mon Pharmacien', city: 'Paris')
Pharmacy.create(name: 'MédiMarket', city: 'Londres')

doliprane = Product.create!(name: 'Doliprane')
fervex = Product.create!(name: 'fervex')

LaboratoryProduct.create(product_id: doliprane.id, laboratory_id: pfizer.id, quantity: rand(100), production_cost: 2,
                         average_price: 5)
LaboratoryProduct.create(product_id: fervex.id, laboratory_id: merck.id, quantity: rand(100), production_cost: 4,
                         average_price: 10)
