class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

  def new
    @product = Product.find(params[:product_id])
    @comment = Comment.new
  end




  def create
    @product = Product.find(params[:product_id])
    @comment = Comment.new(comment_params)
    @comment.product_id = @product.id
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to product_path(@product), notice: 'Comment was successfully created.'
    else
      render :new
      flash[:notice] = 'You have to write some words.'
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to product_path(@product), alert: 'You have deleted the comment successfully.'
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :rating)
  end

end
