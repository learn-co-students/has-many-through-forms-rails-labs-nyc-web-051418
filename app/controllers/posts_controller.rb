class PostsController < ApplicationController
  def show
    # byebug
    @post = Post.find(params[:id])
    @comment = Comment.new(post_id: params[:id])
# byebug
  end

  def index
    # @posts = Post.all
  end

  def new
    @post = Post.new
    @categories=Category.all
  end

  def create
    # byebug
    @categories=Category.all
    # byebug
    @post = Post.create(post_params)
    redirect_to post_path(@post)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
