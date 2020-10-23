class PostsController < ApplicationController
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
  end

  def show
  end

  private
  def post_params
    params.require(:post).permit(:body)
  end
end
