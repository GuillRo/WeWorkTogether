class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
  end

  def new
    @booking = Booking.new
    @workspace = Workspace.find(params[:workspace_id])
    @place = Place.find(params[:place_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @place = Place.find(params[:place_id])
    @booking.user = current_user
    @booking.set_status
    @booking.price = @place.price * @booking.calculate_time
    if @booking.save
      BookingPlace.create!(booking: @booking, place: @place)
      # HM Codeline below (if save_the_days condition)
      redirect_to workspace_path(@place.workspace) if save_the_days(booking_params, params[:place_id])
    else
      @place = Place.find(params[:place_id])
      # Line below is not necessary (HM)
      # @workspace = Workspace.where(workspace_id: @place)
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:beginning_date, :end_date)
  end

  # HM Code - begin
  def save_the_days(booking_params, place_id)
    date_begin = transform(booking_params[:beginning_date])
    date_end = transform(booking_params[:end_date])

    range = generate_date_range(date_begin.to_s, date_end.to_s) unless booking_params[:beginning_date] == booking_params[:end_date]
    date = transform(booking_params[:beginning_date]) if booking_params[:beginning_date] == booking_params[:end_date]

    success = save_the_date(date, place_id) if date
    success = save_the_range(range, place_id) if range
    success
  end

  def save_the_range(range, place_id)
    if BookingDate.first.nil?
      BookingDate.create!(day: Date.parse(range[0]), place_id: place_id, chairs_taken: 1)
      range.shift
    end
    range.each do |date|
      save_the_date(date, place_id)
    end
    return true
  end

  def save_the_date(date, place_id)
    if BookingDate.first.nil?
      BookingDate.create!(day: Date.parse(date), place_id: place_id, chairs_taken: 1)
      return true
    end
    unless existing_date?(date)
      BookingDate.create!(day: Date.parse(date), place_id: place_id, chairs_taken: 1)
      return true
    end
    if existing_date?(date)
      existing = BookingDate.where(day: Date.parse(date))
      existing.each do |exisdate|
        add_chair(exisdate) if exisdate.place_id == place_id.to_i
        create_chair(exisdate, place_id) if exisdate.place_id != place_id.to_i
      end
      return true
    end
  end

  def create_chair(exisdate, place_id)
    BookingDate.create!(day: exisdate.day, place_id: place_id, chairs_taken: 1)
  end

  def add_chair(exisdate)
    chairs = exisdate.chairs_taken.to_i
    chairs += 1 if exisdate.chairs_taken < exisdate.place.number_of_chairs
    exisdate.update(chairs_taken: chairs)
  end

  def existing_date?(date)
    BookingDate.where(day: Date.parse(date)).exists? ? true : false
  end

  def generate_date_range(first, last)
    first = "", last = "", first unless last
    if last.nil? || last.empty?
      last = (Time.now - 1.day).in_time_zone('Brussels').strftime("%Y-%m-%d")
    end
    if first.empty?
      first = Time.strptime(last, "%Y-%m-%d").in_time_zone('Brussels').beginning_of_month.strftime("%Y-%m-%d")
    end
    (first..last).select { |d|  valid_date?(d) }
  end

  def valid_date?(dat)
    return true if Date.parse(dat)
  end

  def transform(date)
    array = date.split("-")
    good = []
    good[0] = array[2].to_i
    good[1] = array[1].to_i
    good[2] = array[0].to_i
    string = good.join("-")
    return string
  end
  # HM Code - end
end
