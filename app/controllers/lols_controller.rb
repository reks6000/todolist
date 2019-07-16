class LolsController < ApplicationController
    def index
        @lols = Lol.all
    end
    
    def show
        @lol = Lol.find(params[:id])
    end
    
    def new
        
    end
    
    def create
        @lol = Lol.new(todo_params)
        @lol.save
        redirect_to @lol

#        render plain: params[:todo].inspect
    end
 
    private
        def todo_params
            params.require(:lol).permit(:text, :isCompleted)
#            defaults = {:text=>"Default", :isCompleted=>"false"}
#            params = defaults.merge(params)
        end
end
