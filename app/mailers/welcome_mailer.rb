class WelcomeMailer < ApplicationMailer
  def send_welcome_email(user)
    @user = user
    mail to: user.email, subject: "Welcome To Weka.", from: "kelyn.njeri@gmail.com"
  end
end
