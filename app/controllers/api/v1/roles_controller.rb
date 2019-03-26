class Api::V1::RolesController < ApplicationController

  def index
    @roles = Role.all
    render json: @roles
  end

  def create
    # byebug
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
    params.require(:role).permit(:organization_id, :title, :rank, :user_id)
  end
end
