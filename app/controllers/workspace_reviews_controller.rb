class WorkspaceReviewsController < ApplicationController
  # def index
  #   @workspace = Workspace.find(params[:workspace_id])
  #   @workspace_reviews = @workspace.workspace_reviews
  # end

  def new
    @workspace = Workspace.find(params[:workspace_id])
    @workspace_review = WorkspaceReview.new
  end

  def create
    @workspace_review = WorkspaceReview.new(review_params)
    @bookings = Workspace.find(params[:workspace_id]).bookings.where(current_user == :user_id)
    @workspace_review.booking = @bookings.first
    if @workspace_review.save
      redirect_to workspace_path(params[:workspace_id])
    else
      # raise
      redirect_to workspace_reviews_error_url
    end
  end

  private

  def review_params
    params.require(:workspace_review).permit(:content, :score)
  end
end
