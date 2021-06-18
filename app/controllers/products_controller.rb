class ProductsController < ApplicationController
  def index
    all_products = Product.all
    render json: all_products.as_json
  end

  def show
    the_id = params[:id]
    a_product = Product.find_by(id: the_id)
    render json: a_product.as_json
  end

  def create
    product = Product.new(
      name: params[:input_name], 
      price: params[:input_price], 
      image_url: params[:input_image_url], 
      description: params[:input_description]
    )
    product.save
    render json: product.as_json
  end

  def update
    the_id = params[:id]
    product = Product.find_by(id: the_id)
    product.name = params[:input_name]
    product.price = params[:input_price]
    product.image_url = params[:input_image_url]
    product.description = params[:input_description]

    product.save
    render json: product.as_json
  end
end
