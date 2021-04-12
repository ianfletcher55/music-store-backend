class Api::ProductImagesController < ApplicationController

  def create
    @product_image = ProductImage.new(
      product_id: params[:product_id],
      image_id: params[:image_id]
    )
    if @product_image.save
      render json: { message: 'ProductImage successfully created' }
    else
      render json: {errors: @product_image.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @product_image = Productimage.find_by(id: params[:id])
    @product_image.destroy
    render json: { message: 'ProductImage successfully destroyed' }
  end

end
