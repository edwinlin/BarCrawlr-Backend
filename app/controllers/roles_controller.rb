class RolesController < ApplicationController

  def index
    @roles = Role.all
    render json: @roles
  end

  def create
    @role = Role.create(role_params)
    render json: @role
  end

  def update
    @role.update(role_params)
  end

  def destroy
    @role.destroy
  end

# Private helper methods
  private

  def role_params
    params.require(:org_id).permit(:title, :rank, :Role_id)
  end
end
