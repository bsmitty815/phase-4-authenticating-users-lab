class UsersController < ApplicationController

    def show
        # returns the first user when the first user is logged in
        # returns the second user when the second user is logged in
        user = User.find_by(id: session[:user_id])
        if user
            render json: user
        else
            render json: { error: "User Not Found" }, status: :not_found
        end
    end
end
