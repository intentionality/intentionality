class NotificationMailer < ActionMailer::Base
  default from: "from@intentionality.herokuapp.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.todo_notification.subject
  #
  def todo_notification(todo)
    @todo = todo
    mail to: todo.user.email_address
  end
end
