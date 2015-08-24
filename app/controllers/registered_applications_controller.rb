class RegisteredApplicationsController < ApplicationController
  def new
    @registered_app = Registered_applications.new
  end

  def create
    @user = User.find(params[:id])
    @registered_apps = @user.registered_apps.build(registered_app_params)
    if @registered_apps.save!
      flash[:notice] = "App was registered"
      redirect_to @user
    else
      flash[:error] = "There was an error registering the app. Try again."
    end
  end

  def edit
  end

  def show
  end

  private

  def registered_app_params
    params.require(:registered_app).permit(:name, :url)
  end
end
