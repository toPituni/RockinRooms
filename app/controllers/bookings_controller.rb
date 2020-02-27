class BookingsController < ApplicationController
  def search

  end

  def new
    @booking = Booking.new
    # @room = Room.find(params[:room_id])
  end

  def create
    # got room id
    @room = Room.find(params[:room_id])

    # have to find out dates,this v are getting from rooms#index
    start_at = params[:start_time]
    end_at = params[:end_time]

    # @booking.room_id = @room
    @booking = Booking.new

    # setting all values
    @booking.start_time = start_at
    @booking.end_time = end_at
    @booking.user_id = current_user.id
    @booking.room_id = @room.id

raise
    # create a new booking
    if @booking.save!
      redirect_to new_room_booking_path(@room)
    else
      render 'rooms/index'
    end
  end

  private

  # def set_room_params
  #   params.require(:booking).permit(:room_id)

  #   params.require(:).permit( :name, :description, :address, :district, :equipment, :price)
  # end
end


