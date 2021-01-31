class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def next
    @user = User.new(user_params)
    render :new if @user.invalid?
  end

  def confirm
    @user = User.new(user_params)
    render :new and return if params[:back]
    render :next if @user.invalid?(:confirm)
  end

  def create
    @user = User.new(user_params)
    render :new and return if params[:back]
    render :confirm and return if !@user.save
    redirect_to @user
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  private

    def user_params
      # 子テーブル複数レコードとの混合技になる
      params.require(:user).permit(:first_name, :last_name, :email, :gender, :age, :phone_number, :address)
    end
end
