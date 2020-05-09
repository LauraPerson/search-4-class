class CoursesController < ApplicationController
    before_action :authenticate_user!
    before_action :find_course, only: [:show, :update, :destroy, :edit]

    def index
      if params[:query]
        @courses = policy_scope(Course.search_by_title(params[:query]))
      else
        @courses = policy_scope(Course.search_by_category(params[:category]))
      end
    end
    def show
      authorize @course
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
      params.require(:course).permit(:title, :price, :schedule_date, :description, :category_id, :duration)
    end
end
