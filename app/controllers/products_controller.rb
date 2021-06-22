class ProductsController < ApplicationController
  def index
    all_products = Product.all
    render json: all_products
  end

  def show
    the_id = params[:id]
    a_product = Product.find_by(id: the_id)

    render json: a_product
  end

  def create
    product = Product.new(
      name: params[:input_name], 
      price: params[:input_price], 
      image_url: params[:input_image_url], 
      description: params[:input_description]
    )
    product.save
    render json: product
  end

  def update
    the_id = params[:id]
    product = Product.find_by(id: the_id)

    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description

    product.save
    render json: product
  end

  def destroy
    the_id = params[:id]
    product = Product.find_by(id: the_id)

    render json: product
    product.destroy
  end
end
