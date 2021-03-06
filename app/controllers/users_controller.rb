class UsersController < ApplicationController
  before_action :authenticate_user!


    def show
      authorize current_user
      @user = User.find(params[:id])
    end

    def edit
    end

    def update
      current_user.update(params_user)
      redirect_to user_path(current_user)
    end

    private

    def params_user
      params.require(:user).permit(:first_name, :last_name, :email, :password, :photo)
    end
end


