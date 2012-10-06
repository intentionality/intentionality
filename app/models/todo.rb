class Todo < ActiveRecord::Base
  attr_accessible :complete, :duration, :name, :start, :end
  belongs_to :user

  scope :of_today, where('start >= ?', DateTime.now.midnight)
  scope :needs_notification, where(:been_notified => false)

  def send_notification
    TodoMailer.todo_notification(self).deliver!
  end
end
