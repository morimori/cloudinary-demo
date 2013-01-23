class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find params[:id]
  end

  def create
    @user = User.new params.require(:user).permit(:name, :avatar)

    if @user.save
      redirect_to users_url, notice: 'User was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    @user = User.find params[:id]

    if @user.update_attributes params.require(:user).permit(:name, :avatar)
      redirect_to users_url, notice: 'User was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy

    redirect_to users_url
  end
end
