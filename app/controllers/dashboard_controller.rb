class DashboardController < ApplicationController
  def index

    @rooms = Room.all.where(user: current_user)

  end
end
