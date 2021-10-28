class ParkingsController < ApplicationController
  def show
    @parking = Parking.find(params[:id])
  end

  def index
    @parkings = Parking.all
  end

  def create
    @parking = Parking.new(parking_params)
    @parking.user = current_user
    @parking.save
    redirect_to parking_path(@parking)
  end

  def new
    @parking = Parking.new
  end

  private

  def parking_params
    params.require(:parking).permit(:title, :city, :street_address, :description, :category, :photo)
  end
end
