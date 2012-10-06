class Todo < ActiveRecord::Base
  attr_accessible :complete, :duration, :name, :start
  validates_presence_of :duration, :name, :start
end
