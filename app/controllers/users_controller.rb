class UsersController < ApplicationController
  authorize_resource only: [:edit, :update]

  before_filter :load_user,           only: [ :edit, :update ]
  before_filter :load_decorated_user, only: [ :show ]

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
    @user.update_attributes(user_params)
    redirect_to user_path(@user)
  end

  private

  def load_decorated_user
    @user = user.decorate
  end

  def load_user
    @user = user
  end

  def user
    @user ||= User.find(params[:id])
  end

  def user_params
    params[:user].permit(:name, :email, :bio)
  end

end
