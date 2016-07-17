class UsersController < ApplicationController

#  def user_params
#    params.require(:user).permit(:name, :email,:password, :password_confirmation, :image, :remember_digest)
#  end

 def create

  if env['omniauth.auth'].present?
    # Facebookログイン
    @user  = User.from_omniauth(env['omniauth.auth'])
    result = @user.save(context: :facebook_login)
    fb       = "Facebook"
  else
    # 通常サインアップ
    @user  = User.new(strong_params)
    result = @user.save
    fb       = ""
  end
  if result
    sign_in @user
    flash[:success] = "#{fb}ログインしました。"
    redirect_to @user
  else
    if fb.present?
      redirect_to auth_failure_path
    else
      render 'new'
    end
  end
end

  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets.all
  end

  def edit
    @user = User.find(params[:id])
  end

 def update
   @user = User.find(params[:id])
   if @user.update(user_params)
     redirect_to user_show_path(@user)
  else
    render :edit
  end
 end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile, :image)
  end
end