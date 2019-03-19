class PaymentsController < ApplicationController
  def show
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @payment = Payment.new(workspace_address: @booking.find_workspace.address,
                           amount_cents: @booking.price,
                           owner_id: @booking.find_workspace.user_id,
                           renter_id: current_user)
  end

  def create
  end
end
