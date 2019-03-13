class WorkspacesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index

  def index
    # @workspaces = Workspace.all
    if params[:query].present?
      @workspaces = Workspace.near(params[:query], 50)
    else
      @workspaces = Workspace.where.not(latitude: nil, longitude: nil)
    end
    @markers = @workspaces.map do |workspace|
      {
        lng: workspace.longitude,
        lat: workspace.latitude,
        infoWindow: render_to_string(partial: "shared/infowindow", locals: { workspace: workspace })
      }
    end
  end

  def show
    @workspace = Workspace.find(params[:id])
  end

  def new
  end

  def create

  end

  def edit
  end

  def update

  end

  def destroy

  end
end
