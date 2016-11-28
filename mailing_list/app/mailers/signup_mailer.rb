class SignupMailer < ApplicationMailer
  default from: ENV['MAIL_FROM']

  def new_signup(user)
    @user = user
    mail(to: @user.email 'Thanks for signing up!')
end
