class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :name
      t.time :start
      t.integer :duration
      t.boolean :complete

      t.timestamps
    end
  end
end
