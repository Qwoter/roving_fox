class PagesController < ApplicationController
  def product
    @product = Product.new
  end

  def pricing
    @product = Product.new
  end

  def contact
    @product = Product.new
  end
end
