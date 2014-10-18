class HomeController < ApplicationController
  def index
		p session[:session_id]
  end
end
