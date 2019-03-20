class PaymentsController < ApplicationController
  before_action :authenticate_user!
  def show
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @payment = Payment.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @payment = Payment.new(workspace_address: @booking.find_workspace.address,
                           amount_cents: @booking.price_cents,
                           owner_id: @booking.find_workspace.user_id,
                           renter_id: current_user.id,
                           booking_id: @booking.id)
    if @payment.save
      redirect_to workspaces_payment_accepted_url(@booking)
    else
      redirect_to workspaces_payment_error_url(@booking)
    end
  end
end
