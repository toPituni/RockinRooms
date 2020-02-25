class BookingsController < ApplicationController
  def search
    district =  params["search"]["district"]
    start_date = params["search"]["start_date"]
    end_date = params["search"]["end_date"]

   @rooms = Room.all.where("district LIKE :search", search: district)
   @bookings = []
   @rooms.each do |room|
   @bookings.push(Booking.all.where(room: room)) #DO NEWBOOKING STUFF IN THIS ITERATION
   #.where.not(end_time: end_date) && Booking.all.where(room: room).where.not(end_time: start_date)
    end
      @available_rooms = []
      newbooking = @bookings.where.not(start_time: start_date ) & @bookings.where.not(end_time: end_date) #@BOOKINGS IS AN ARRAY SO WE CANNOT USE .WHERE
      newbooking.each do |booking|
      @available_rooms.push(Room.find(booking.room_id))
      end
  raise

    if newbooking.empty?
      puts "not possible"
    else
      puts "possible"
    end

end





  def new
  end

  def create
  end

  def show
  end
end
