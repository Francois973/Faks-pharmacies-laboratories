# Faks

This API allows to gather two types of establishments, both pharmacies and laboratories. It allows to create interactions between laboratories that provide products to partner pharmacies for example: orders from laboratories and sales of products by pharmacies. Also, the user of this API will be able to have information about the pharmacies that make the most sales and the cities where they are located. 

Finally, the API will automatically send an email to pharmacies and laboratories in case of low stock (quantity: less than 5).

## Technical informations

- Ruby 3.1.2
- Ruby on Rails 7.0.4 
- Postgresql 14.7


## Getting started and pre-requisites

### Versions

```sh
Ruby 3.1.2
Rails 7.0.4.1
```
### Clonage

```sh
git clone git@github.com:Francois973/Faks-pharmacies-laboratories.git
```

### Install the depandancies

```sh
bundle install
```

### Migrate schema of database

```sh
rails db:migrate
```

### Run seed

```sh
rails db:seed
```

### Start 🚀

```sh
rails server
```

## Documentation

In this api we use the ids of the institutions but the medical institutions are all identified with an RPPS identifier. This is one of the improvements that can be made in the future.

### Get list of Laboratories

```sh
GET http://localhost:3000/api/v1/laboratories 
```

### Get all pharmacies based on a city

```sh
GET http://localhost:3000/api/v1/pharmacies/:city
```

### Creation of an order between a pharmacy and a laboratory

```sh
POST http://localhost:3000/api/v1/orders 
     headers: Content-Type: application/json
     body:
          {
            "pharmacy_id": "128",
            "product_id": "51",
            "laboratory_id": "128"
            "price": "4",
            "quantity": "4",
            "pharmacy_product_id": "46"
          }
```

### Report the sale of a product in a pharmacy

```sh
POST http://localhost:3000/api/v1/sales 
     headers: Content-Type: application/json
     body:
          {
            "pharmacy_id": "128",
            "product_id": "51",
            "price": "4",
            "quantity": "4",
            "pharmacy_product_id": "46"
          }
```

### Ranking of the profitability of products for a laboratory

```sh
GET http://localhost:3000/api/v1/products/:id
```
### Ranking of the three best pharmacies for a partner laboratory

```sh
GET  http://localhost:3000/api/v1/classment-pharmacy/:id
```
### Ranking of the most profitable cities for a laboratory

```sh
GET http://localhost:3000/api/v1/classment-city/:id
```
### Start 🚀
