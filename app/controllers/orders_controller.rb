class OrdersController < ApplicationController
  before_action :authenticate_user
  def index
    orders = Order.where(user_id: current_user.id)
    render json: orders
  end

  def create
    price = Product.find_by(id: params[:product_id])[:price] * params[:quantity].to_i

    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: price,
      tax: (price) * 0.09,
      total: (price) + ((price) * 0.09)
    )
    order.save
    render json: order
  end

  def show
    order = Order.find_by(id: params[:id])
    if order
      if order.user_id == current_user.id
        render json: order
      else
        render json: {message: 'You dont have this order.'}
      end
    else
      render json: {message: 'This order does not exist.'}
    end
  end

end
