class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[show update edit]

  def show
    @profile = Profile.find(params[:id])
    @bookings = Booking.where(user_id: @profile.user_id)
    @workspace_reviews = []
    @bookings.each do |booking|
      @workspace_reviews.push(booking.workspace_review)
    end
    @my_workspaces = Workspace.where(user_id: @profile.user_id)
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
