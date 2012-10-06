class NotificationMailer < ActionMailer::Base
  default from: "support@liberat.us"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.todo_notification.subject
  #
  def todo_notification(todo)
    @todo = todo
    mail to: todo.user.email
  end
end

#super monkey patch until https://github.com/mailchimp/mailchimp-gem/pull/7
module Mailchimp
  class MandrillDeliveryHandler
    def deliver!(message)
      
      message_payload = {
        :track_opens => settings[:track_opens],
        :track_clicks => settings[:track_clicks],
        :message => {
          :subject => message.subject,
          :from_name => settings[:from_name],
          :from_email => message.from.first,
          :to => message.to.map{|m|{email: m}}
        }
      }

      [:html, :text].each do |format|
        content = get_content_for(message, format)
        message_payload[:message][format] = content if content
      end

      message_payload[:tags] = settings[:tags] if settings[:tags]
      
      api_key = message.header['api-key'].blank? ? settings[:api_key] : message.header['api-key']
      
      resp = Mailchimp::Mandrill.new(api_key).messages_send(message_payload)
      Logger.new($STDOUT).info resp.inspect
      
    end
  end
end