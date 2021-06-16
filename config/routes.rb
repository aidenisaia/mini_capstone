Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/one", controller: "products", action: "one_product"

  get "/all", controller: "products", action: "all_products"
end
