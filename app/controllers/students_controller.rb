class StudentsController < ApplicationController

    before_action :check_session

    def check_session
        if User.find_by(id: session[:user_id]).present?
            @current_user = User.find_by(id: session[:user_id])
        else
            @current_user = "Guest"
        end
    end

    def new
    end

    def new_time
    end

    def create
        # At student profile creation, assume student is free every time every day
        puts 'student profile created path'
        puts params['monday_12am']
        puts params['monday_1am']
        redirect_to '/students', notice: "Student profile created! Sit back and relax...we will notify you when a match occurs."
    end

    def edit
   
    end

    def update
        # 
    end

    def destroy 
   
    end

end