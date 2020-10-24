class SkillsController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin, only: [:edit, :update, :destroy]
  def index
  end

  def new
    @user = current_user
    @skill = @user.skills.new
    render :new
  end

  def create
    @user = current_user
    @skill = @user.skills.create(skill_params)
    if @skill.save
      flash[:alert] = "skill Added Successfully"
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @skill = Skill.find(params[:id])
    render :edit
  end

  def update
    @user = User.find(params[:user_id])
    @skill = Skill.find(params[:id])
    if @skill.update(skill_params)
      flash[:notice] = "skill successfully updated!"
      redirect_to user_skill_path(@user, @skill)
    else
      render :edit
    end
  end

  def show
    @skill = Skill.find(params[:id])
    # @user = @skill.skill_user.user
    @user = User.find(params[:user_id])
  end

  def destroy
    @skill = Skill.find(params[:id])
    @user = current_user
    @skill.destroy
    redirect_to user_path(@user)
  end

  private
  def skill_params
    params.require(:skill).permit(:name)
  end
end
