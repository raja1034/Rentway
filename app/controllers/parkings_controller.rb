class ParkingsController < ApplicationController
  def show
    @parking = Parking.find(params[:id])
  end

  def index
    @parkings = Parking.all
  end

  def new
    @parking = Parking.new
  end

  def create
    @parking = Parking.new(parking_params)
    if @parking.save
      redirect_to parking_path
    else
      render :index
    end
  end

  private

  def parking_params
    params.require(:parking).permit(:title, :street_address, :description, :city, :category)
  end
end
