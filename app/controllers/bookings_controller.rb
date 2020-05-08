class BookingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @course = Course.find(params[:course_id])
    @booking = Booking.new(user_id: current_user.id)
    @booking.course = @course
    authorize @booking
    @booking.save
    redirect_to user_path(current_user)
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to user_path(current_user)
  end

end
