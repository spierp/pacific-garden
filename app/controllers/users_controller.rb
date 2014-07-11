class UsersController < ApplicationController
  before_filter :authenticate_user!
  attr_accessible :first_name, :last_name, :image
  
  def index
    if current_user.admin?
      @users = User.all
    else 
      redirect_to root_path
    end
  end

  def show
    @user = User.find(params[:id])
  end
  
  def destroy
    @user = User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_path
  end
  
  def create
    User.create(user_params)
  end
  
  def user_params
    params.require(:user).permit(:first_name, :last_name, :image)
  end
  
  
end
  
