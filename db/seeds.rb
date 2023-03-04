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

# Laboratories products
10.times do
  Product.create!(name: Faker::Lorem.word, laboratory_id: pfizer.id, quantity: rand(1000))
end

10.times do
  Product.create!(name: Faker::Lorem.word, laboratory_id: merck.id, quantity: rand(1000))
end

10.times do
  Product.create!(name: Faker::Lorem.word, laboratory_id: abbott.id, quantity: rand(1000))
end

10.times do
  Product.create!(name: Faker::Lorem.word, laboratory_id: amgen.id, quantity: rand(1000))
end

10.times do
  Product.create!(name: Faker::Lorem.word, laboratory_id: sanofi.id, quantity: rand(1000))
end
