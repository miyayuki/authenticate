class UserSessionController < ApplicationController
 skip_before_action :require_user, only: [:new, :create]
 
  # ログイン画面表示
  def new
    @user_session = UserSession.new
  end
 
  #ログイン認証
  def create
    @user_session = UserSession.new(user_session_params)
 
    if @user_session.save
      # 認証が成功なのでトップ画面へ遷移
      redirect_to root_url
    else
      # 認証失敗なのでログイン画面を表示
      render action: :new
    end
  end
 
  #ログアウト
  def destroy
    current_user_session.destroy
    redirect_to sign_in_url
  end
 
 private
    def user_session_params
      params.require(:user_session).permit(:email, :password)
    end
end
