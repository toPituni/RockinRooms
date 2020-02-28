class RoomsController < ApplicationController
  def index

    #--------------Display all rooms/ only filtered list of rooms ------#

    @rooms = Room.all
    if params[:search].present?
      @rooms = filter_district(@rooms) if params[:search][:district].present?

      dates_present = params[:search][:start_date].present? &&
                      params[:search][:end_date].present?

      @rooms = filter_dates(@rooms) if dates_present

      #  this is storing dates for next link (Book - button)
      @start = params[:search][:start_date]
      @end = params[:search][:end_date]
    end
    #--------------map ---------------------#
    @rooms = Room.all if @rooms.empty?
    @geo_rooms = @rooms.geocoded.distinct #returns flats with coordinates
    raise
    @markers = @geo_rooms.map do |room|
      {
        lat: room.latitude,
        lng: room.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { room: room })
      }
    end
  end

  #------------------- To show booked room details ------------------#
  def show
    @room = Room.find(params[:id])
  end

  #------------------- To create a new room-------------------------#
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(set_room_params)
    @room.user_id = current_user.id
    if @room.save
      redirect_to dashboard_index_path
    else
      p @room.errors.messages
      render :new
    end
  end


  #------------------- To filtering district and dates----------------#

  def edit
    @room = Room.find(params[:id])
  end

  def update
    room = Room.find(params[:id])
    room.user_id = current_user.id
    room.update(set_room_params)
    redirect_to dashboard_index_path
  end

  def destroy
    room = Room.find(params[:id])
    #room.user_id = current_user.id
    room.delete
    redirect_to dashboard_index_path
  end



  private

  def filter_district(scope)
    scope.where(district: params[:search][:district])
  end

  def filter_dates(scope)
    start_time = params[:search][:start_date]
    end_time = params[:search][:end_date]
    search_range = start_time.to_time.utc..end_time.to_time.utc
    testing = scope.joins(:bookings)
         .where.not(bookings: { start_time: search_range } )
  end

  #------------------- setting params for creating new room -------------#
  def set_room_params
    params.require(:room).permit(:name, :description, :address, :district, :equipment, :price)
  end
end
