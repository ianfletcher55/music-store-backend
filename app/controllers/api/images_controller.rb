class Api::ImagesController < ApplicationController

  def create
    @image = Image.new(
      url: params[:url],
      description: params[:description],
      primary: params[:primary]
    )
    if @image.save
      render 'index.json.jb'
    else
      render json: {errors: @image.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @image = Image.find(params[:id])
    @image.url = params[:url] || @image.url
    @image.description = params[:description] || @image.description
    @image.primary = params[:primary] || @image.primary
    if @image.save
      render "show.json.jb"
    else
      render json: { errors: @image.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @image = Image.find_by(id: params[:id])
    @image.destroy
    render json: { message: 'Image successfully destroyed' }
  end

end

t.string "url"
t.text "description"
t.boolean "primary"
