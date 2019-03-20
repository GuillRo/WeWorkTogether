class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def show
    # @profile = Profile.find(params[:id])
    @bookings = Booking.where(user: current_user)
    @my_workspaces = Workspace.where(user: current_user)

    @reviews_about_my_workspaces = []
    @my_workspaces.each do |ws|
      ws.workspace_reviews.each do |review|
        @reviews_about_my_workspaces.push(review)
      end
    end

    # @reviews_i_posted_about_workspaces = WorkspaceReview.where(booking_id: @bookings.ids)
    @reviews_i_posted_about_workspaces = []
    @bookings.each do |booking|
      @reviews_i_posted_about_workspaces.push(booking.workspace_review)
    end

    @reviews_i_posted_about_users = []
    @my_workspaces.each do |ws|
      ws.bookings.each do |booking|
        @reviews_i_posted_about_users.push(booking.user_review)
      end
    end

    @reviews_about_me = []
    @bookings.each do |booking|
      @reviews_about_me.push(booking.user_review)
    end
  end
end
