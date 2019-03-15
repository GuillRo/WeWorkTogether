class PaymentsController < ApplicationController
  def show
      @booking = current_user.orders.where(state: 'paid').find(params[:id])
  end

  def create
  booking = booking.find(params[:booking_id])
  payment  = payment.create!(payment_sku: booking.sku, amount: booking.price, state: 'pending', user: current_user)

  redirect_to new_order_payment_path(order)
  end

end
