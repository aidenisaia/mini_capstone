product = Product.new(
  name: "#{Faker::Lorem.word}", 
  price: Faker::Number.decimal(l_digits: 2), 
  image_url: "#{Faker::Internet.url}", 
  description: "#{Faker::Lorem.sentence}"
)

product.save