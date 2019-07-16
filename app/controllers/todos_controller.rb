class TodosController < ApplicationController
    
    def index
        @todos = Todo.all
    end
    
    def show
        @todo = Todo.find(params[:id])
    end
    
    def new
        
    end
    
    def create
        @todo = Todo.new(todo_params)
        @todo.save
        redirect_to @todo

        #render plain: params[:todo].inspect
    end
 
    private
        def todo_params
            params.require(:todo).permit(:text, :isCompleted)
        end
    
end
