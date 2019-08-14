class UsersController < ApplicationController

    def create
        user = User.new(
            first_name: params[:first_name],
            last_name: params[:last_name],
            email: params[:email],
            username: params[:username],
            password: params[:password],
        )
        if user.save
            render json: user
        else
            render json: {errors: "An account already exists for this email."}
        end
    end

    private

   # def user_params
    #    params.require(:user).permit(:first_name, :last_name, :email, :password, :username)
    #end
end
