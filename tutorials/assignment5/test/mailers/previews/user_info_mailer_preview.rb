# Preview all emails at http://localhost:3000/rails/mailers/user_info_mailer
class UserInfoMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_info_mailer/send_info_mailer
  def send_info_mailer
    UserInfoMailer.send_info_mailer
  end

end
