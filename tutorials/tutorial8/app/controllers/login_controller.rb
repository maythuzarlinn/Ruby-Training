require "./config/initializers/constants.rb"
require "./config/initializers/messages.rb"

class LoginController < ApplicationController
  def login_landing_page
    if @EMAIL == params[:email] && @PASSWORD == params[:password]
      session[:email] = params[:email]
      session[:password] = params[:password]
      render "landing_page"
    elsif (params[:email] == "" || params[:password] == "")
      redirect_to root_path, alert: @ERRORINFOEMPTY
    else (params[:email] != @EMAIL || params[:password] != @PASSWORD)
      redirect_to root_path, alert: @ERRORINFO     end
  end
end
