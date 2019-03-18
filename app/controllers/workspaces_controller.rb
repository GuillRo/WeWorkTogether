class WorkspacesController < ApplicationController
  before_action :set_workspace, only: %i[show update destroy]

  def index
    if params[:query].present?
      @workspaces = Workspace.near(params[:query], 50)
      @markers = @workspaces.map do |workspace|
        {
          lng: workspace.longitude,
          lat: workspace.latitude,
          infoWindow: render_to_string(partial: "shared/infowindow", locals: { workspace: workspace })
        }
      end
    else
      redirect_to root_path
      # @workspaces = Workspace.where.not(latitude: nil, longitude: nil)
    end
  end

  def show
    @workspace = Workspace.find(params[:id])
  end

  def new
    @workspace = Workspace.new
  end

  def create
    @workspace = Workspace.new(workspace_params)
    @user = current_user

    if @workspace.save
      redirect_to workspace_path(@workspace)
    else
      render :new
    end
  end

  def update
    @workspace.update(workspace_params)

    redirect_to workspace_path(@workspace)
  end

  def destroy
    @workspace.destroy
    redirect_to workspace_path
  end

  private

  def workspace_params
    params.require(:workspace).permit(:title, :address, :description, :website, :phone_number, places_attributes: [:id, :name, :description, :price, :number_of_chairs, :_destroy])
  end

  def set_workspace
    @workspace = Workspace.find(params[:id])
  end

end
