class BookingsController < ApplicationController
  before_action :find_parking
  def index
    @bookings = Booking.where(user_id: current_user)
  end
  def new
    @booking = Booking.new
  end

  # def create
  #   @booking = Booking.new(booking_params)
  #   @booking.parking = @parking
  #   @booking.save
  #   redirect_to bookings_path(@parking)
  # end

  def create
    @booking = Booking.new(booking_params)
    @booking.parking = @parking
    @booking.user = current_user
    @booking.save
    redirect_to parking_booking_path(@parking, @booking)
  end
  def show
    @booking = Booking.find(params[:id])
  end
  private

  def find_parking
    @parking = Parking.find(params[:parking_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
