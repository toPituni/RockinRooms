class BookingsController < ApplicationController
  def search

  end

  def new
    @booking = Booking.new
    # @room = Room.find(params[:room_id])
  end

  def create
    # got room id
    if user_signed_in?
      @bookings = Booking.all
      @room = Room.find(params[:room_id])

    # have to find out dates,this we are getting from rooms#index as params
      start_at = params[:start_time]
      end_at = params[:end_time]

      @booking = Booking.new

    # setting all values
      @booking.start_time = start_at
      @booking.end_time = end_at
      @booking.user_id = current_user.id
      @booking.room_id = @room.id

      # -------finding duration
      @duration = (end_at.to_time - start_at.to_time)/3600

    # create a new booking
      if @booking.save!
      # shows the booked room's details
        redirect_to room_path(@room)
        # redirect_to room_path(@room)
      else
        render 'rooms/index'
      end
    end
  end

   def destroy
    booking = Booking.find(params[:id])
    booking.delete
    redirect_to dashboard_index_path
  end

  # private

  # def set_room_params
  #   params.require(:booking).permit(:room_id)

  #   params.require(:).permit( :name, :description, :address, :district, :equipment, :price)
  # end
end


