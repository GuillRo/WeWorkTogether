class WorkspacesController < ApplicationController
  before_action :set_flat, only: %i[show update destroy]

  def index
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
    @booking = Booking.new
    @reviews = Review.where(workspace_id: @workspace.id)
    @photo = Photo.where(workspace_id: @workspace.id)
    @places = Place.where(workspace_id: @workspace.id)
  end

  def new
    @workspace = Workspace.new
  end

  def create
    @workspace = Workspace.new(workspace_params)
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
    params.require(:workspace).permit(:title, :address, :price, :description, :nbr_rooms, :nbr_beds, :photo)
  end

  def set_flat
    @workspace = Workspace.find(params[:id])
  end

end
