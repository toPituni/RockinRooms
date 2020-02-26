class RoomsController < ApplicationController
  def index
    if params[:search].present?
      district =  params["search"]["district"]
    start_date = params["search"]["start_date"]
    end_date = params["search"]["end_date"]

   @rooms = Room.all.where("district LIKE :search", search: district)
   available_rooms= []

   @rooms.each do |room|
    @bookings = Booking.all.where(room: room)
    @bookings.each do |booking|

       if booking.start_time != start_date && booking.start_time != end_date
        available_rooms << Room.find(booking.room_id)
       end
      end
      #DO NEWBOOKING STUFF IN THIS ITERATION
    end
    @rooms = available_rooms
    # if @rooms.empty?
    #   render alert 'No rooms in this district'
    # end
  else

    @rooms = Room.all

  end
  end

  def create
  end

  def new
  end
end
