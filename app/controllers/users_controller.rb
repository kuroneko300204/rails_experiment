class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def confirm
    @user = User.new(user_params)
    render :new if @user.invalid?
  end

  def create
    @user = User.new(user_params)
    render :new and return if params[:back] || !@user.save
    redirect_to @user
  end

  def show
    @user = User.find_by(id: params[:id])
    byebug
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email)
    end
end
