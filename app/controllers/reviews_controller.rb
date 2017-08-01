class ReviewsController < ApplicationController

    before_action :check_session

    def check_session
    @current_user = User.find_by(id: session[:user_id])
    end

    def new
        @edamater = Edamater.find_by(id: params[:id])
    end

    def create
        review = Review.new
        review.text = params["text"]
        review.rating = params["rating"]
        review.user = @current_user
        edamater = Edamater.find_by(id: params[:id])
        review.edamater = edamater
        review.save
        puts "asdf"
        redirect_to "/edamaters/#{edamater.id}", notice: "Review posted!"
    end

    def edit
        
    end

end