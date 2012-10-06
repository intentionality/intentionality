class AddNotifiedToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :been_notified, :boolean, :default => false
  end
end
