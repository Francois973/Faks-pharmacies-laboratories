Sale.destroy_all
PharmacyProduct.destroy_all
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

grande_rue = Pharmacy.create(name: 'Pharmacie de la Grande Rue', city: 'Lyon')
perrache = Pharmacy.create(name: 'Pharmacie Perrache', city: 'Lyon')
Pharmacy.create(name: 'Pharmacie Villerbanne', city: 'Lyon')
Pharmacy.create(name: 'Farmacity', city: 'Marseille')
Pharmacy.create(name: 'La Pharmacie Populaire', city: 'Montpellier')
Pharmacy.create(name: 'La Pharmacie Familliale', city: 'Grenoble')
Pharmacy.create(name: 'Mon Pharmacien', city: 'Paris')
Pharmacy.create(name: 'MédiMarket', city: 'Londres')

doliprane = Product.create(name: 'Doliprane')
fervex = Product.create(name: 'fervex')
comprimes = Product.create(name: 'comprimés')

LaboratoryProduct.create(product_id: doliprane.id, laboratory_id: pfizer.id, quantity: rand(100), production_cost: 2,
                         average_price: 5)
LaboratoryProduct.create(product_id: comprimes.id, laboratory_id: merck.id, quantity: rand(100), production_cost: 7,
                         average_price: 20)
LaboratoryProduct.create(product_id: fervex.id, laboratory_id: merck.id, quantity: rand(100), production_cost: 4,
                         average_price: 10)

order = Order.create(pharmacy_id: grande_rue.id, laboratory_id: pfizer.id, product_id: doliprane.id,
                     price: 4, quantity: 6)
order = Order.create(pharmacy_id: perrache.id, laboratory_id: merck.id, product_id: fervex.id,
                     price: 4, quantity: 6)

PharmacyProduct.create(product_id: fervex.id, pharmacy_id: grande_rue.id, quantity: 50)
PharmacyProduct.create(product_id: doliprane.id, pharmacy_id: perrache.id, quantity: 100)
