class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render 'index.json.jb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @product = Product.new(
      brand: params[:brand],
      year: params[:year],
      model: params[:model],
      scale: params[:scale],
      price: params[:price],
      new_used: params[:new_used],
      description: params[:description],
      category: params[:category],
      stock: params[:stock],
      weight: params[:weight],
      strings: params[:strings]
    )
    if @product.save
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.brand = params[:brand] || @product.brand
    @product.year = params[:year] || @product.year
    @product.model = params[:model] || @product.model
    @product.scale = params[:scale] || @product.scale
    @product.price = params[:price] || @product.price
    @product.new_used = params[:new_used] || @product.new_used
    @product.description = params[:description] || @product.description
    @product.category = params[:category] || @product.category
    @product.stock = params[:stock] || @product.stock
    @product.weight = params[:weight] || @product.weight
    @product.strings = params[:strings] || @product.strings
    if @product.save
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: 'Product successfully destroyed' }
  end

end
