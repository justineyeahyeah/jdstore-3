class WelcomeController < ApplicationController

  # --CRUD--
  def index
    @products = Product.all.order("position ASC").paginate(:page => params[:page], :per_page => 12)
    if @comments.blank?
      @avg_comment = 0
    else
      @avg_comment = @comments.average(:rating).present? ? @comments.average(:rating).round(2) : 0
    end
  end

end
