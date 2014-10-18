class HomeController < ApplicationController
  def index
		#puts "session information"
		p "セッションID "+session[:session_id]
  end
end
