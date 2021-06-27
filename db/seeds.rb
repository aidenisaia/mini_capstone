8.times do
  Image.create!(url: "#{Faker::Internet.domain_name(subdomain: true)}", product_id: Product.all.sample.id)
end