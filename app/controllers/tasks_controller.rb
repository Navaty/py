class TasksController < ApplicationController

	def new
		@task = Task.new
	end

	def create
    @project = Project.find(params[:article_id])
    @task = @project.tasks.create(task_params)
    redirect_to project_path(@project)
  end
 
  private
    def task_params
      params.require(:task).permit(:title, :description)
    end
end
