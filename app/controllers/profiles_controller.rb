class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :update, :edit]

  def show
    @profile = Profile.find(params[:id])
    @bookings = Booking.where(user_id: @profile.user_id)
    @my_workspaces = Workspace.where(user_id: @profile.user_id)

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

  # def create
  #   @profile = Profile.new(profile_params)
  #   if @profile.save
  #     redirect_to profile_path(@profile)
  #   else
  #     render :new
  #   end
  # end

  # def new
  #   @profile = Profile.new
  # end

  # def edit
  # end

  # def update
  #   @profile.update(profile_params)
  #   redirect_to profile_path(@profile)
  # end

  private

  def profile_params
    params.require(:profile).permit(:photo)
  end

  def set_profile
    @profile = Profile.find params[:id]
  end
end
