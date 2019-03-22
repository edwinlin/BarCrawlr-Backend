class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    render json: @projects
  end

  def create
    @project = Project.create(project_params)
    render json: @project
  end

  def update
    @project.update(project_params)
  end

  def destroy
    @project.destroy
  end

# Private helper methods
  private

  def project_params
    params.require(:org_id).permit(:name)
  end
end
