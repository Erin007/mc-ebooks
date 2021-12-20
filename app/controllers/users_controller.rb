class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      flash[:notice]="Signup successful"
    else
      flash[:notice]="Please try again"
      redirect_to '/signup'
    end
  end

  def new
  end

  def index
  end


private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
