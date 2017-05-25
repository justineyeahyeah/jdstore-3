class UpdateColumnInCartItem < ActiveRecord::Migration[5.0]
  def up
    change_column_default(:cart_items, :quantity, 0)
  end
end
