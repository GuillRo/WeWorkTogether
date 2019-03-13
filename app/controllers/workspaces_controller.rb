class WorkspacesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index
  
  def index
    @workspaces = Workspace.all
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
