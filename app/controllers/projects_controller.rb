class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin, only: [:edit, :update, :destroy]
  def index
  end

  def new
    @user = current_user
    @project = Project.new
    render :new
  end

  def create
    @user = current_user
    @project = @user.projects.new(project_params)
    if @project.save
      flash[:alert] = "Project Added Successfully"
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @project = Project.find(params[:id])
    render :edit
  end

  def update
    @user = User.find(params[:user_id])
    @project = Project.find(params[:id])
    if @project.update(project_params)
      flash[:notice] = "Project successfully updated!"
      redirect_to user_project_path(@user, @project)
    else
      render :edit
    end
  end

  def show
    @project = Project.find(params[:id])
    # @user = @project.project_user.user
    @user = @project.user
  end

  def destroy
    @project = Project.find(params[:id])
    @user = current_user
    @project.destroy
    redirect_to user_path(@user)
  end

  private
  def project_params
    params.require(:project).permit(:name, :description)
  end
end

