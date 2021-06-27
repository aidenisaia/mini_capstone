class SuppliersController < ApplicationController
  def index
    suppliers = Supplier.all
    render json: suppliers
  end

  def show
    supplier = Supplier.find_by(id: params[:id])
    render json: supplier
  end

  def create
    
  end

  def update

  end

  def destroy

  end
end
