class ReminderMailer < ApplicationMailer

  def reminder_email
    @reminder = params[:reminder]
    @user = params[:user]

    mail(to: @user.email, subject: "Your reminder")
  end
end
