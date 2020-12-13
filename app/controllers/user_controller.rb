class UserController < ApplicationController
  def new
    @user = User.new
    2.times { @user.posts.build }
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = '登録できました。'
      redirect_to root_url
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :age, posts_attributes: [:title, :body])
  end
end
