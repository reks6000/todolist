class ProjectsController < ApplicationController
  
    def index
        @projects = Project.all
    end
    
    def show
        @project = Project.find(params[:id])
    end
    
    def new
        
    end
    
    def create
        @project = Project.new(project_params)
        @project.save
        redirect_to @project

#        render plain: params[:todo].inspect
    end
 
    private
        def project_params
            params.require(:project).permit(:title)
        end
end
