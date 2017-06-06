class Account::FavoritesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @products = current_user.product_favs
  end
end
