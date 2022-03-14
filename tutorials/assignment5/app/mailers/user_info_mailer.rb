class UserInfoMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_info_mailer.send_info_mailer.subject
  #
#  def send_info_mailer
#    @greeting = "Hi"
#
#    mail to: "to@example.org"
#  end
  def send_info_mailer(email, current_user)
    @sql = "select name,email,address from users where (users.id = #{current_user});"
    @greeting = ActiveRecord::Base.connection.execute(@sql).to_a
    mail to: email
  end
end
