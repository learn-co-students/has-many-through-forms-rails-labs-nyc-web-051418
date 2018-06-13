class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new(post_id: params[:id])
    @user = @comment.build_user
    @comments = @post.comments
    @categories = @post.categories
    @users = User.all
    @comment_users = @comments.map do |comment|
      comment.user
    end.uniq

  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @post.categories.build(name: "")
    @post.comments.build(content: "")
    @comments = @post.comments
    @users = User.all
    @categories = Category.all
  end

  def create
    post = Post.create(post_params)
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
