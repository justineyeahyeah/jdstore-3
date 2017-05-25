class ProductsController < ApplicationController
  def index
    if params[:category].blank?
      @products = Product.where(:is_shelved => true).order("position ASC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @products = Product.where(:is_shelved => true).where(:category_id => @category_id)
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(params[:id])
    @quantity = params[:quantity].to_i
    # 判断加入购物车的商品是否超过库存

    if @quantity > @product.quantity # 如果输入的数量大于库存
      @quantity = @product.quantity
      flash[:warning] = "您选择的商品数量超过库存，实际加入购物车的商品为#{@quantity}件。"
    else
      current_cart.add(@product, @quantity)
    end
    redirect_to product_path(@product)
  end



  private
  def product_params
    params.require(:product).permit(:title, :description, :quantity, :price, :image, :author, :publisher, :pages, :is_shelved, :publication_date, :category_id)
  end

end
