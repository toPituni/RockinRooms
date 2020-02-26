class RoomsController < ApplicationController
  def index
    if params[:search].present?
      district =  params["search"]["district"]
      start_date = params["search"]["start_date"]
      end_date = params["search"]["end_date"]

      @rooms = Room.all.where("district LIKE :search", search: district)

      # Replace this code with correct ActiveRecord queries
      if @rooms.empty?
        flash[:notice] = "No rooms in #{district}!."
      else
        available_rooms= []
        @rooms.each do |room|
          @bookings = room.bookings
          @bookings.each do |booking|
            if booking.start_time != start_date && booking.start_time != end_date
              available_rooms << booking.room
            else
              flash[:notice] = "No rooms in on these days!."
            break
            end
          break
          end
        break
        end
        @rooms = available_rooms.uniq
      end

    else
        @rooms = Room.all
    end

  end

  def create
  end

  def new
  end
end
