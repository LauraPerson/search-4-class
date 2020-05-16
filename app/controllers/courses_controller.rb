class CoursesController < ApplicationController
    before_action :authenticate_user!
    before_action :find_course, only: [:show, :update, :destroy, :edit]

    def index
      if params[:query]
        @search_name = params[:query]
        @courses = policy_scope(Course.search_by_title(params[:query]))
        @markers = @courses.select{|course| course.online == false}.map do |course|
            {
            lat: course.latitude,
            lng: course.longitude,
            infoWindow: render_to_string(partial: "info_window", locals: { course: course }),
            image_url: helpers.asset_url('lamp_marker.png')
          }
        end
      elsif params[:category]
        @category_name = Category.find(params[:category].to_i).name
        @courses = policy_scope(Course.search_by_category(params[:category]))
        @markers = @courses.select{|course| course.online == false}.map do |course|
          {
            lat: course.latitude,
            lng: course.longitude,
            infoWindow: render_to_string(partial: "info_window", locals: { course: course }),
            image_url: helpers.asset_url('lamp_marker.png')
          }
        end
      else
        @courses = policy_scope(Course)
      end
    end
    def show
      authorize @course
      @booking = Booking.find_by(course_id: @course.id, user_id: current_user.id)
    end
    def new
      @course = Course.new
      authorize @course
    end
    def create
      @course = Course.new(params_course)
      authorize @course
      @course.user = current_user
      if @course.save
        redirect_to course_path(@course)
      else
        render :new
      end
    end
    def edit
      authorize @course
    end
    def update
      @course.update(params_course)
      authorize @course
      redirect_to course_path(@course)
    end
    def destroy
      @course.destroy
      authorize @course
      redirect_to user_path(current_user)
    end

    private
    def find_course
      @course = Course.find(params[:id])
    end

    def params_course
      params.require(:course).permit(:title, :price, :schedule_date, :description, :category_id, :duration, :address, :online, :max_bookings)
    end
end
