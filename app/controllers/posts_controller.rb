class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def new
    @user = current_user
    @project = Project.find(params[:project_id])
    @post = Post.new
    render :new
  end

  def create
    @user = current_user
    @project = Project.find(params[:project_id])
    @post = @project.posts.new(post_params)
    if @post.save
      flash[:alert] = "Post Added Successfully"
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:project_id])
    @post = Post.find(params[:id])
    render :edit
  end

  def update
    @project = Project.find(params[:project_id])
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "post successfully updated!"
      redirect_to project_post_path(@project, @post)
    else
      render :edit
    end
  end

  def show

    @post = Post.find(params[:id])
    @project = @post.project
    # @user = User.find(params[:user_id])
  end

  def destroy
    @post = Post.find(params[:id])
    @project = @post.project
    @post.destroy
    redirect_to project_path(@project)
  end

  private
  def post_params
    params.require(:post).permit(:body)
  end
end
