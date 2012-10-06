class ChangeDurationForTodo < ActiveRecord::Migration
  def change
    change_table :todos do |t|
      t.remove :duration
      t.column :end, :datetime
    end
  end
end
