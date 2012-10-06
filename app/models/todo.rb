class Todo < ActiveRecord::Base
  attr_accessible :complete, :duration, :name, :start, :end
  belongs_to :user

  scope :of_today, where('start >= ?', DateTime.now.midnight)

  def send_notification
    TodoMailer.todo_notification(self).deliver!
  end
end
