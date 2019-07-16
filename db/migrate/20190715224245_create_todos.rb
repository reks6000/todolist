class CreateTodos < ActiveRecord::Migration[5.2]
  def change
      drop_table :todos
      drop_table :projects
      drop_table :lols
#     create_table :todos do |t|
#       t.belongs_to :projects, index: true
#       t.string :text
#       t.boolean :isCompleted
# 
#       t.timestamps
#     end 
#     
#     create_table :projects do |t|
#       t.string :title
# 
#       t.timestamps
#     end
  end
end
