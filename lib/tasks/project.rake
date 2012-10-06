namespace :project do
  task :send_start_notifications do
    Todo.needs_notification.each do |todo|
      todo.send_notification
    end
  end
end