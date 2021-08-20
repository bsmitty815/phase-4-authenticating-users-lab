class SessionsController < ApplicationController

    def create
        # returns the logged in user
        # sets the user ID in the session
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id
        render json: user
    end

    def destroy
        # returns no content
        # deletes the user ID from the session
        session.delete :user_id
        head :no_content
    end
end
