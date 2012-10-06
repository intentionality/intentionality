class Todo < ActiveRecord::Base
  attr_accessible :complete, :duration, :name, :start, :end
  validates_presence_of :duration, :name, :start, :end
end
