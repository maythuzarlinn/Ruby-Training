class PasswordResetsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?
      #PasswordMailer.with(email: @email, token: @token).reset.deliver_now
      PasswordMailer.with(user: @user).reset.deliver_now
    else
      redirect_to root_path, notice: "If an account with that emial is found, we will send a link to reset yout password"
    end
  end

  def edit
    @user = User.find_signed!(params[:token], purpose: "password_reset")
  rescue ActiveSupport::MessageVerifier::InvalidSignature
    redirect_to root_path, alert: "Yout token has expired"
  end

  def update
    @user = User.find_signed(params[:token], purpose: "password_reset")
    if @user.update(password_params)
      redirect_to root_path, notice: "Password was reset successfully.Please log in again."
    else
      render :edit
    end
  end

  private

  def password_params
    params.permit(:password)
  end
end
