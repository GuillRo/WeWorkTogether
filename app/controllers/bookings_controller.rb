class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show

  end

  def new
    
  end

  def create

  end

end
