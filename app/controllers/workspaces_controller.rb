class WorkspacesController < ApplicationController
  before_action :set_workspace, only: %i[show update edit destroy]

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

  def payment_accepted
    @id = Booking.find(params[:id].to_i).places.first.workspace.id
  end

  def payment_error
    @id = Booking.find(params[:id].to_i).places.first.workspace.id
  end

  def new
    @workspace = Workspace.new
  end

  def create
    @workspace = Workspace.new(workspace_params)
    @workspace.user = current_user
    if @workspace.save
      params[:workspace][:service_ids].each do |service_id|
        ServiceList.create(workspace: @workspace, service: Service.find(service_id.to_i)) unless service_id.to_i == 0
      end
      if @workspace.place?
        redirect_to workspace_path(@workspace)
      else
        Workspace.destroy(@workspace.id)
        render :new
      end
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
