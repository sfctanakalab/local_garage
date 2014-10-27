require 'test_helper'

class NoticeMailerTest < ActionMailer::TestCase
  test "notify_mail" do
    mail = NoticeMailer.notify_mail
    assert_equal "Notify mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
