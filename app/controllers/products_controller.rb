class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(params[:id])
    flash[:notice] = "测试加入购物车"
    redirect_to :back
  end





  private
  def product_params
    params.require(:product).permit(:title, :description, :quantity, :price, :image)
  end

end
