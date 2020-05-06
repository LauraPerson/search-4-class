class CoursesController < ApplicationController
    before_action :find_course, only: [:show, :update, :destroy, :edit]

    def index
        @courses = Course.all
    end
    def show
    end
    def new
        @course = Course.new
    end
    def create
        @course = Course.new(params_course)
        @course.user = current_user
        if @course.save
            redirect_to course_path(@course)
        else
            render :new
        end 
    end
    def edit
    end
    def update
        @course.update(params_course)
        redirect_to course_path(@course)
    end
    def destroy
        @course.destroy
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
