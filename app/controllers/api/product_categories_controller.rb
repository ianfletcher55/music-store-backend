class Api::ProductCategoriesController < ApplicationController

  def create
    @product_category = ProductCategory.new(
      product_id: params[:product_id],
      category_id: params[:category_id]
    )
    if @product_category.save
      render json: { message: 'ProductCategory successfully created' }
    else
      render json: {errors: @product_category.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @product_category = ProductCategory.find_by(id: params[:id])
    @product_category.destroy
    render json: { message: 'ProductCategory successfully destroyed' }
  end

end
