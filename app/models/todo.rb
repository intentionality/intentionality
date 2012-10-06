class Todo < ActiveRecord::Base
  attr_accessible :complete, :name, :start, :end

  scope :of_today, where('start >= ?', DateTime.now.midnight)

  scope :needs_notification, where(:been_notified => false)
end
