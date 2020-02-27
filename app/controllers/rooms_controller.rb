class RoomsController < ApplicationController
  def index
    @geo_rooms = Room.geocoded #returns flats with coordinates
    @markers = @geo_rooms.map do |room|
      {
        lat: room.latitude,
        lng: room.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { room: room })
      }
    end
    #--------------map above---------------------#


    @rooms = Room.all
    if params[:search].present?
      @rooms = filter_district(@rooms) if params[:search][:district].present?

      dates_present = params[:search][:start_date].present? &&
                      params[:search][:end_date].present?

      @rooms = filter_dates(@rooms) if dates_present

      #  this is storing dates for next link ( book)
      @start = params[:search][:start_date]
      @end = params[:search][:end_date]
    end

  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(set_room_params)
    @room.user_id = current_user.id
    if @room.save!
      redirect_to rooms_path
    else
      render :new
    end
  end


  private

  def filter_district(scope)
    scope.where(district: params[:search][:district])
  end

  def filter_dates(scope)
    start_time = params[:search][:start_date]
    end_time = params[:search][:end_date]
    search_range = start_time.to_time.utc..end_time.to_time.utc
    scope.joins(:bookings)
         .where.not(bookings: { start_time: search_range } )
         .uniq
  end

  def set_room_params
    params.require(:room).permit(:name, :description, :address, :district, :equipment, :price)
  end
end
