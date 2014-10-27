class NoticeMailer < ActionMailer::Base
  default from: "localgarage.center@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.notify_mail.subject
  #
  def notify_mail
    @greeting = "Hi"

    mail to: "mitsuimasayoshi@gmail.com", subject: "[Localgarage]Printer_URL"
  end
end
