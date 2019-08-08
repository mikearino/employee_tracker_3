class ProjectsController < ApplicationController


  def new
    @employee = Employee.find(params[:employee_id])
    @project = @employee.projects.new
    render :new
    # @project = Project.new
  end

  def create
    @employee = Employee.find(params[:employee_id])
    @project = @employee.projects.new(project_params)
    if @employee.save
      redirect_to employee_project_path(id: @project.id)
    else
      render :new
    end
  end

  def show
    @employee = Employee.find(params[:employee_id])
    @project = Project.find(params[:id])
    render :show
  end

  private
  def project_params
    params.require(:project).permit(:name, :description)
  end



end
