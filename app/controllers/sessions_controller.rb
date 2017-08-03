class SessionsController < ApplicationController

    before_action :check_session

    def check_session
        if User.find_by(id: session[:user_id]).present?
            @current_user = User.find_by(id: session[:user_id])
        else
            @current_user = "Guest"
        end
    end

    # got code and modified from professor week6 sessions_controller
    # also used login layout for sessions/new view
    def create
        u = User.find_by(email: params["email"])
        if u != nil
            if u.authenticate(params["password"])
                # cookies["user_id"] = u.id
                session["user_id"] = u.id
                redirect_to "/", notice: "Welcome back, #{u.username}!"
            else
                redirect_to "/session/new", alert: "Bad password"
            end
        else
            redirect_to "/session/new", alert: "Unknown user"
        end
    end

    def destroy
        # cookies.delete("user_id")
        # cookies["user_id"] = nil
        reset_session
        redirect_to root_url, notice: "Goodbye from EdaMate!"
    end

end