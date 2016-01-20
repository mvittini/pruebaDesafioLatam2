class TasksController < ApplicationController
  def new
  end

  def create
    project = Project.find(params[:project_id])

    @task = project.tasks.build(task_params)
    @task.user = current_user if user_signed_in?
    @task.save

    redirect_to project
  end


  def destroy
  	@project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:content)
    end
end
