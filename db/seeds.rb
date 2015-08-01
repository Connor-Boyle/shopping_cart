require 'faker'

10.times do
  User.create(name: Faker::Name.name, password: Faker::Internet.password, email: Faker::Internet.email, address_1: Faker::Address.street_address, suburb: Faker::Address.city, post_code: Faker::Address.postcode, city: Faker::Address.city, phone: Faker::PhoneNumber.cell_phone)
end

10.times do
  Product.create(name: Faker::Commerce.product_name, description: Faker::Company.catch_phrase, price: Faker::Commerce.price)
end
