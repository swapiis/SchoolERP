class UserMailer < ActionMailer::Base
  default from: '"Chhatrapati Technologies"<bhushan.j.kamble@gmail.com>'

  def student_email(user, subject, message)
    @user = user
    @message = message
    mail(to: @user.email, subject: "#{subject}")
  end
end
