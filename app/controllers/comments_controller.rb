class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin, only: [:edit, :update, :destroy]
  def new
    @user = current_user
    @post = Post.find(params[:post_id])
    @comment = Comment.new
    render :new
  end

  def create
    @user = current_user
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.user = current_user
    if @comment.save
      flash[:alert] = "comment Added Successfully"
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    render :edit
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      flash[:notice] = "comment successfully updated!"
      redirect_to post_comment_path(@post, @comment)
    else
      render :edit
    end
  end

  def show
    @comment = Comment.find(params[:id])
    @user = @comment.user
    @post = Post.find(params[:post_id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:post_id])
    @user = current_user
    @comment.destroy
    redirect_to project_post_path(@post.project, @post)
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
