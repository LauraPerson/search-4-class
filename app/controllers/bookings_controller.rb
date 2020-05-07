class BookingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @booking = Booking.new(params_booking)
    authorize @booking
    @booking.save
    redirect_to user_path(current_user)
  end

  private

  def params_booking
    params.require(:booking).permit(:user_id, :course_id)
  end
end
