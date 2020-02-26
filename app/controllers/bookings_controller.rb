class BookingsController < ApplicationController
  def search

  end

  def new
    @booking = Booking.new
    @room = Room.find(params[:room_id])
  end

  def create
    @room = Room.find(params[:room_id])
    @booking = Booking.new(booking_params)
    @booking.room = @room
    if @booking.save
      redirect_to room_path(@room)
    else
      render 'rooms/index'
    end
  end

  private

  def booking_params
    params.require(:booking).permit
  end
end
