class TodosController < ApplicationController
    
    protect_from_forgery with: :null_session
    def new
        
    end
    
    def create
        @todo = Todo.new(todo_params)
        @todo.save
        redirect_to '/'
#         render plain: params[:todo].inspect
    end
    
    def show
        
    end
    
    def update
        @todo = Todo.find_by(text: params[:text])
        @todo.isCompleted = params[:isCompleted]; 
        @todo.save
    end
 
    private
        def todo_params
            params.require(:todo).permit(:text, :isCompleted, :project_id)
        end
    
end
