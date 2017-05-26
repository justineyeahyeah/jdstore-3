class CartItemsController < ApplicationController
  before_action :authenticate_user!

  def destroy
    @cart = current_cart
    @cart_item = @cart.cart_items.find_by(product_id: params[:id]) #用find_by(product_id)找到相应的cart_item
    @product = @cart_item.product   #为什么需要这一步？cart_item和prodcut是多对多关系？还是一对多关系？还是一对一关系？
    @cart_item.destroy

    flash[:warning] = "成功将 #{@product.title} 从购物车删除！"
    redirect_to :back
  end

  def update
 		p params
 		@cart = current_cart
 		@cart_item = @cart.cart_items.find_by(product_id: params[:id])
 		if @cart_item.product.quantity >= cart_item_params[:quantity].to_i
 			if  params[:add] == "1"
 				@cart_item.quantity +=1
 				@cart_item.save!
 			elsif params[:sub] =="1"
 				@cart_item.quantity -=1
 				@cart_item.save!
 			end
 		elsif cart_item_params[:quantity].to_i < 0
 			redirect_to carts_path
 		end
 		redirect_to carts_path

  private

  def cart_item_params
    params.require(:cart_item).permit(:quantity)
  end

end
