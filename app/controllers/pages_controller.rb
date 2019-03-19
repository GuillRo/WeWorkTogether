class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  def home
    @workspaces = Workspace.last(6)
  end
end
