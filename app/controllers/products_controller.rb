class ProductsController < ApplicationController
  before_action :authenticate_admin, only: [:create, :update, :destroy]

  def index
    if params[:category]
      products = Category.find_by(name: params[:category]).products
    else
      products = Product.all
    end
    render json: products.as_json
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
      description: params[:input_description],
      supplier_id: params[:input_supplier_id]
    )

    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    product = Product.find_by(id: params[:id])

    product.update!(
      name: params[:name] || product.name,
      description: params[:description] || product.description,
      price: params[:price] || product.price,
      supplier_id: params[:supplier_id] || product.supplier_id
    )
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    the_id = params[:id]
    product = Product.find_by(id: the_id)

    render json: product
    product.destroy
  end
end
