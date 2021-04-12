class Api::OrdersController < ApplicationController
  def index
    @orders = Order.all
    render "index.json.jb"
  end

  def show
    @order = Order.find(params[:id])
    render "show.json.jb"
  end

  def create
    calculated_subtotal = 0
    carted_products = current_user.carted_products.where(status: "carted")
    carted_products.map do |carted_product|
      calculated_subtotal += (carted_product.product.price * carted_product.quantity)
    end
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
      status: "processing",
    )
    if @order.save
      # changes carted_products with user_id staus from carted to ordered
      carted_products.update_all(order_id: @order.id, status: "purchased")
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @order = Order.find(params[:id])
    @order.status = params[:status] || @order.status
    if @order.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    render json: { message: "Order successfully destroyed" }
  end
end
