class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = UserService.getUserByID(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @is_user_create = UserService.createUser(@user)
    if @is_user_create
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
    @user = UserService.getUserByID(params[:id])
  end

  def update
    @user = UserService.getUserByID(params[:id])
    @is_user_update = UserService.updateUser(@user, user_params)
    if @is_user_update
      redirect_to users_path
    else
      render :edit
    end
  end

  def destroy
    @user = UserService.getUserByID(params[:id])
    UserService.destroy(@user)
    redirect_to users_path
  end

  def validate_login
    @user = User.find_by(email: params[:email])
    if @user == nil
      redirect_to root_path, notice: "Could not find the user"
    elsif @user.authenticate(params[:password])
      LoginMailer.login_created(@user).deliver_now
      session[:user_id] = @user.id
      redirect_to users_path
    elsif @user.password != params[:password]
      redirect_to root_path, notice: "Email and Password Missmatched"
    end
  end

  def send_mail_info
    @sql = "select email  from users where (id=#{current_user.id});"
    @email = ActiveRecord::Base.connection.execute(@sql).to_a
    UserInfoMailer.send_info_mailer(@email, current_user.id).deliver_now
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :address, :phone_number)
  end
end