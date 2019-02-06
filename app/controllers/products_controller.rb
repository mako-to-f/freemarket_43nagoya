class ProductsController < ApplicationController

  def index
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :status, :shipping_method, :region, :shipping_timetable, :price, :description).merge(seller_id: 1)
  end

  def show
  end
end
