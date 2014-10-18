class UsersController < ApplicationController
	skip_before_action :require_user, only: [:new, :create]
	# ユーザ登録画面表示
	def new
		@user = User.new
	end

	# ユーザ登録
	def create
		@user = User.new(user_params)
		if @user.save
			# 登録できたらトップ画面へ遷移
			redirect_to root_url
		else
			render action: :new
		end
	end

private
	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end
