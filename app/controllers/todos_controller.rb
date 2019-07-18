class TodosController < ApplicationController
      
    def new
        
    end
    
    def create
        @todo = Todo.new(todo_params)
        @todo.save
        redirect_to '/'
#         render plain: params[:todo].inspect
    end
 
    private
        def todo_params
            params.require(:todo).permit(:text, :isCompleted, :project_id)
        end
    
end
