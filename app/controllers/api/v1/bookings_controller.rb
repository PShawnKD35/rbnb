class Api::V1::BookingsController < Api::V1::BaseController
  # skip_before_action :verify_authenticity_token
  before_action :set_booking, only: [:update, :destroy]

  def create
    @booking = Booking.new(params.require(:booking).permit(:user_id))
    @booking.available_service_id = params[:available_service_id]
    @available_service = @booking.available_service
    
    # Should do a custom validation instead
    unless @available_service.nil?
      unless @available_service.bookings.any? { |booking| booking.confirmed }
        head :created if @booking.save!
      else
        render json: { message:"This time has already been booked, man!" }
      end
    else
      render json: { message: "The available_service requested doesn't exist!" }
    end
  end

  def update
    @booking = params.require(:booking).permit(:confirmed)
    head :no_content if @booking.save!
  end

  def destroy
    head :no_content if @booking.destroy!
  end

  def index
    @bookings = Booking.where(user_id: params[:user_id])
    render json: @bookings
  end

  private
  
  def set_booking
    @booking = Booking.find(params[:id])
  end

  # def bookings_params
  #   params.require(:booking).permit(:user_id, :confirmed)
  # end
end