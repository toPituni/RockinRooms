class DashboardController < ApplicationController
  def index

    @rooms = Room.where(user: current_user)
    @bookings = Booking.where(user: current_user)
  end
end
