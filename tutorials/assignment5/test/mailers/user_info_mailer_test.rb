require "test_helper"

class UserInfoMailerTest < ActionMailer::TestCase
  test "send_info_mailer" do
    mail = UserInfoMailer.send_info_mailer
    assert_equal "Send info mailer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
