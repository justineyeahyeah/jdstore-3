class Account::FavoritesController < ApplicationController
  def index
    @products = current_user.product_favs
  end
end
