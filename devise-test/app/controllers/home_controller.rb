class HomeController < ApplicationController
  def index
		#puts "session information"
		p "ログインセッション情報 "
		p current_user
		p session[:session_id]
		session[:hoge] = "fuga" # これ end
		p session[:hoge]
  end
end
