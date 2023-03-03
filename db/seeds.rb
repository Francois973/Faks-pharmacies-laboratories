Laboratory.destroy_all
Pharmacy.destroy_all

Laboratory.create(name: 'Pfizer-Wyeth')
Laboratory.create(name: 'Merck & Co')
Laboratory.create(name: 'Abbott')
Laboratory.create(name: 'Johnson & Johnson')
Laboratory.create(name: 'Bristol-Mers-Squibb')
Laboratory.create(name: 'Eli Lilly')
Laboratory.create(name: 'Amgen')
Laboratory.create(name: 'Sanofi-Aventis')

Pharmacy.create(name: 'Pharmacie de la Grande Rue', city: 'Lyon')
Pharmacy.create(name: 'Farmacity', city: 'Marseille')
Pharmacy.create(name: 'La Pharmacie Populaire', city: 'Montpellier')
Pharmacy.create(name: 'La Pharmacie Familliale', city: 'Grenoble')
Pharmacy.create(name: 'Mon Pharmacien', city: 'Paris')
Pharmacy.create(name: 'MédiMarket', city: 'Londres')
