class Api::CartedProductsController < ApplicationController
  def index
    @carted_products = CartedProduct.all
    render "index.json.jb"
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
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @carted_product = CartedProduct.find(params[:id])
    @carted_product.quantity = params[:quantity] || @carted_product.quantity
    if @carted_product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @carted_product = CartedProduct.find(params[:id])
    @carted_product.destroy
    render json: { message: "Product successfully destroyed" }
  end
end
