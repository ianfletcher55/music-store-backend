class Api::CartedProductsController < ApplicationController
  def index
    @carted_products = CartedProduct.all
    render 'index.json.jb'
  end

  def create
    @carted_product = CartedProduct.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      order_id: params[:order_id],
      quantity: params[:quantity],
      status: params[:status],
    )
    if @carted_product.save
      render 'show.json.jb'
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
