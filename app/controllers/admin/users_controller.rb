class Admin::UsersController < ApplicationController
# before_action :is_admin?
  before_action :find_user, only: %i[show edit update destroy]
  
  def index
    @users = User.all
    # @user_pag = User.page params[:page]
    # @users = User.page params[:page]
  end

  def show
    
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to admin_users_path(@user)
  end

  def new
  end

  def create
  end

  def destroy
    @user.destroy
    redirect_to admin_users_path
  end

  def is_admin?
    if current_user.category != "Admin"
      redirect_to root_path
    end
  end

  def find_user
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:category)
  end
end
