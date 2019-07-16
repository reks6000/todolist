class AddProjectToTodo < ActiveRecord::Migration[5.2]
 def change
   add_reference :todos, :project, index: true
 end
end
