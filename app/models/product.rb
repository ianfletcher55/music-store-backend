class Product < ApplicationRecord
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :product_images
  has_many :images, through: :product_images
  has_many :categories
  has_many :categories, through: :product_categories
end
