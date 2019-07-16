class CreateTodos < ActiveRecord::Migration[5.2]
  def up
    create_table :todos do |t|
      t.belongs_to :project, index: true
      t.string :text
      t.boolean :isCompleted

      t.timestamps
    end 
    
    create_table :projects do |t|
      t.string :title

      t.timestamps
    end
  end
  
  def down
      drop_table :projects
      drop_table :todos
  end
end
