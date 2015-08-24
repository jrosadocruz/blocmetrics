class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save!
      flash[:notice] = "New user was created"
      redirect_to @user, notice: 'Topic was saved successfully.'
    else
      flash[:error] = "There was an error creating the user. Try again."
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
