class Todo < ActiveRecord::Base
  attr_accessible :complete, :duration, :name, :start, :end

  default_scope { where('start >= ?', DateTime.now.midnight) }
end
