class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    @rooms = filter_district(@rooms) if params[:search][:district].present?

    dates_present = params[:search][:start_date].present? &&
                    params[:search][:end_date].present?

    @rooms = filter_dates(@rooms) if dates_present
  end

  def create
  end

  def new
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
end
