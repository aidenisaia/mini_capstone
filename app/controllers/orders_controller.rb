class OrdersController < ApplicationController
  def create
    if current_user
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
    else
      render json: {message: 'You need to be logged in to make an order.'}
    end
  end

  def show
    if current_user
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

  def index
    if current_user
      orders = Order.where(id: current_user.id)
      render json: orders
    else
      render json: {message: 'You need to be logged in to see your orders.'}
    end
  end
end
