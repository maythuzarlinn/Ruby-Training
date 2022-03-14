class LoginController < ApplicationController
  def landing_page
    email = "mtzl@gmail.com"
    password = "mtzl@2022"
    @login = false
    if (params["email"] == email && params["password"] == password)
      session[:email] = params["email"]
      @login = true
    elsif (params["email"] == "" || params["password"] == "")
      @error = "Please fill the informations!"
      render :index
    else (params["email"] != email || params["passwor"] != password)
      @error = "email or password incorrect!"
      render :index     end
  end

  def logout
    session.delete(:email)
    @login = false
    redirect_to "/"
  end
end
