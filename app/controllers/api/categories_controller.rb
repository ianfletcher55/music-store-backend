class Api::CategoriesController < ApplicationController

  def index
    @categories = Category.all
    render 'index.json.jb'
  end

  def create
    @category = Category.new(
      name: params[:name]
    )
    if @category.save
      render json: { message: 'Category successfully created' }
    else
      render json: {errors: @category.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @category = Category.find_by(id: params[:id])
    @category.destroy
    render json: { message: 'Category successfully destroyed' }
  end

end
