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
villerbanne = Pharmacy.create(name: 'Pharmacie Villerbanne', city: 'Lyon')
farmacity = Pharmacy.create(name: 'Farmacity', city: 'Marseille')
pharmapopulaire = Pharmacy.create(name: 'La Pharmacie Populaire', city: 'Montpellier')
pharmafamilliale = Pharmacy.create(name: 'La Pharmacie Familliale', city: 'Grenoble')
Pharmacy.create(name: 'Mon Pharmacien', city: 'Paris')
Pharmacy.create(name: 'MédiMarket', city: 'Londres')

doliprane = Product.create(name: 'Doliprane')
fervex = Product.create(name: 'fervex')
comprimes = Product.create(name: 'comprimés')
dafalgan = Product.create(name: 'dafalgan')
maxilase = Product.create(name: 'maxilase')
gellule = Product.create(name: 'gellule')

LaboratoryProduct.create(product_id: doliprane.id, laboratory_id: pfizer.id, quantity: rand(100), production_cost: 2,
                         average_price: 5)
LaboratoryProduct.create(product_id: comprimes.id, laboratory_id: pfizer.id, quantity: rand(100), production_cost: 7,
                         average_price: 20)
LaboratoryProduct.create(product_id: fervex.id, laboratory_id: pfizer.id, quantity: rand(100), production_cost: 4,
                         average_price: 10)
LaboratoryProduct.create(product_id: maxilase.id, laboratory_id: pfizer.id, quantity: rand(100), production_cost: 4,
                         average_price: 10)

order = Order.create(pharmacy_id: grande_rue.id, laboratory_id: pfizer.id, product_id: doliprane.id,
                     price: 4, quantity: 20)
order = Order.create(pharmacy_id: perrache.id, laboratory_id: pfizer.id, product_id: comprimes.id,
                     price: 4, quantity: 14)
order = Order.create(pharmacy_id: villerbanne.id, laboratory_id: pfizer.id, product_id: maxilase.id,
                     price: 4, quantity: 10)
order = Order.create(pharmacy_id: farmacity.id, laboratory_id: pfizer.id, product_id: fervex.id,
                     price: 4, quantity: 6)

first = PharmacyProduct.create(product_id: fervex.id, pharmacy_id: grande_rue.id, quantity: 150)
second = PharmacyProduct.create(product_id: doliprane.id, pharmacy_id: merck.id, quantity: 250)
third = PharmacyProduct.create(product_id: comprimes.id, pharmacy_id: villerbanne.id, quantity: 50)
fourth = PharmacyProduct.create(product_id: maxilase.id, pharmacy_id: farmacity.id, quantity: 350)
fifth = PharmacyProduct.create(product_id: dafalgan.id, pharmacy_id: pharmapopulaire.id, quantity: 700)
sixth = PharmacyProduct.create(product_id: dafalgan.id, pharmacy_id: pharmafamilliale.id, quantity: 800)

Sale.create(pharmacy_id: grande_rue.id, pharmacy_product_id: first.id, quantity: 50)
Sale.create(pharmacy_id: grande_rue.id, pharmacy_product_id: second.id, quantity: 100)
Sale.create(pharmacy_id: grande_rue.id, pharmacy_product_id: third.id, quantity: 20)
Sale.create(pharmacy_id: grande_rue.id, pharmacy_product_id: fourth.id, quantity: 300)
Sale.create(pharmacy_id: grande_rue.id, pharmacy_product_id: fifth.id, quantity: 600)
Sale.create(pharmacy_id: grande_rue.id, pharmacy_product_id: sixth.id, quantity: 400)
