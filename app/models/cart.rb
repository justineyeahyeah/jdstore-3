class Cart < ApplicationRecord
  has_many :cart_items
  has_many :products, through: :cart_items, source: :product

  def add_product_to_cart(product)
    ci = cart_items.build   #对has_many的关联的集合物件可以调用build和include这两个method
    ci.product = product
    ci.quantity = 1
    ci.save
  end
end
