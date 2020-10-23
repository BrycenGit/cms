class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def new
    @user = current_user
    @post = Post.new
    render :new
  end

  def create
    @user = current_user
    @post = @user.posts.new(post_params)
    if @post.save
      flash[:alert] = "Post Added Successfully"
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
    render :edit
  end

  def update
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "post successfully updated!"
      redirect_to user_post_path(@user, @post)
    else
      render :edit
    end
  end

  def show
    @post = Post.find(params[:id])
    # @user = @post.post_user.user
    @user = User.find(params[:user_id])
  end

  def destroy
    @post = Post.find(params[:id])
    @user = current_user
    @post.destroy
    redirect_to user_path(@user)
  end

  private
  def post_params
    params.require(:post).permit(:body)
  end
end
