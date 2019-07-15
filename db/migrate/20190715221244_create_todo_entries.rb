class CreateTodoEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_entries do |t|
      t.string :text
      t.bool :isCompleted

      t.timestamps
    end
  end
end
