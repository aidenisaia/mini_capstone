class ProductsController < ApplicationController
  def one_product
    recent = Product.last
    render json: recent.as_json
  end

  def all_products
    all = Product.all
    render json: all.as_json
  end
end
