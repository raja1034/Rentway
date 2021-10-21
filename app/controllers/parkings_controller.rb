class ParkingsController < ApplicationController
  def show
    @parking = Parking.find(params[:id])
  end

  def index
    @parkings = Parking.all
  end

  def new
    @parking = Parking.new(params[:parking])
    @parking.save
  end
end