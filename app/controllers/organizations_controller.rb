class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all
    render json: @organizations
  end

  def create
    @organization = Organization.create(organization_params)
    render json: @organization
  end

  def update
    @organization.update(organization_params)
  end

  def destroy
    @organization.destroy
  end

# Private helper methods
  private

  def organization_params
    params.permit(:name)
  end

end
