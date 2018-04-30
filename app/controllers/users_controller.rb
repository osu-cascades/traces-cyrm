class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :require_admin, except: [:show]
  before_action :require_admin_or_current_user, only: [:show]

  def index
    @admins = User.where(role: :admin)
    @guests = User.where(role: :guest)
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    if @user.destroy
      redirect_to users_path
      flash[:success] = 'User successfully deleted.'
    end
  end

  def set_admin
    @user  = User.find(params[:id])
    @user.role = :admin
    @user.save

    if @user.save
      redirect_to users_path
      flash[:success] = "#{@user} is now an administrator."
    end
  end

  private

  def require_admin
    unless current_user.admin?
      redirect_to root_path
      flash[:alert] = 'Restricted action, must be an administrator.'
    end
  end

  def require_admin_or_current_user
    unless current_user.admin? or current_user == User.find(params[:id])
      redirect_to root_path
      flash[:alert] = 'Restricted action.'
    end
  end
end
