Supplier.create!([
  {name: "Store Inc.", email: "storeinc@gmail.com", phone_number: "(898) 758-4835"},
  {name: "Brick n Morter", email: "bricknmorter@gmail.com", phone_number: "(888) 324-7273"}
])
Product.create!([
  {name: "ut", price: "66.0", image_url: "http://moen-blick.info/chanel", description: "Sapiente rem accusamus corrupti.", count: 76, supplier_id: 2},
  {name: "Bees Knees", price: "45.0", image_url: "https://www.scienceabc.com/wp-content/uploads/ext-www.scienceabc.com/wp-content/uploads/2017/09/Bee-legs.jpg-.jpg", description: "The knees of a bee", count: 2, supplier_id: 2},
  {name: "illum", price: "63.0", image_url: "http://gibson.com/alfredo", description: "Nostrum asperiores nihil maxime.", count: 23, supplier_id: 1},
  {name: "Elbow Cream", price: "7.0", image_url: "elllbowwcream.to/imgurl", description: "A product for your dry ass elbows", count: 45, supplier_id: 1},
  {name: "box", price: "43.0", image_url: "https://www.scienceabc.com/wp-content/uploads/ext-www.scienceabc.com/wp-content/uploads/2017/09/Bee-legs.jpg-.jpg", description: "ss", count: 32, supplier_id: 1}
])
