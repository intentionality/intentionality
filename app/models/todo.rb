class Todo < ActiveRecord::Base
  attr_accessible :complete, :duration, :name, :start
end
