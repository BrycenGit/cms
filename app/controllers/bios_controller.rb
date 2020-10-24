class BiosController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin, only: [:edit, :update, :destroy]
  def new
    @user = current_user
    @bio = Bio.new
    render :new
  end

  def create
    @user = current_user
    @bio = Bio.create(bio_params)
    @bio.user = @user
    if @bio.save
      flash[:alert] = "bio Added Successfully"
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @bio = Bio.find(params[:id])
    render :edit
  end

  def update
    @user = User.find(params[:user_id])
    @bio = Bio.find(params[:id])
    if @bio.update(bio_params)
      flash[:notice] = "bio successfully updated!"
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def show
    @bio = Bio.find(params[:id])
    # @user = @bio.bio_user.user
    @user = User.find(params[:user_id])
  end

  def destroy
    @bio = Bio.find(params[:id])
    @user = current_user
    @bio.destroy
    redirect_to user_path(@user)
  end

  private
  def bio_params
    params.require(:bio).permit(:body)
  end
end
