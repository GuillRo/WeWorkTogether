class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = booking.new(booking_params)
    @place = Place.find()
    BookingPlace.create!(booking: @booking, place: @place)
    @booking.set_status
    if @booking.save
      redirect_to workspace_path(@workspace)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:beginning_date, :end_date)
  end

end


# @booking = Booking.new(booking_params)
# if check_correctdate?(@booking)
#   if check_available?(Flat.find(params[:flat_id]), @booking)
#     @booking.flat = Flat.find(params[:flat_id])
#     @booking.status = "booked"
#     @booking.user = current_user
#       if @booking.save
#         redirect_to flat_path(params[:flat_id])
#       else
#         redirect_to bookings_error_url
#       end
#   else
#   redirect_to new_flat_booking_url(message: "Sorry. Booked already.")
#   end
# else
#   redirect_to new_flat_booking_url(message: "Sorry. There is something wrong in the dates.")
# end

# def booking_params
#   params.require(:booking).permit(:date_begin, :date_end, :flat_id)
# end

# def check_available?(flat, new_booking)
#   @all_bookings = Booking.where(flat_id: flat)
#   date_from = new_booking.date_begin
#   date_end = new_booking.date_end
#   @all_bookings.each do |booking|
#     return false if (date_from..date_end).overlaps?(booking.date_begin..booking.date_end)
#   end
#   return true
# end

# def check_correctdate?(booking)
#   return false if booking.date_begin.nil? || booking.date_end.nil?
#   return false unless booking.date_begin <= booking.date_end
#   return false unless booking.date_end <= Date.today + 365
#   return true
# end