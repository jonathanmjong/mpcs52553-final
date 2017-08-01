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
        redirect_to "/edamaters/#{edamater.id}", notice: "Review posted!"
    end

    def edit
        @edamater = Edamater.find_by(id: params[:id])
        @review = Review.find_by(id: params[:review_id])
    end

    def update
        review = Review.find_by(id: params[:review_id])
        review.text = params["text"]
        review.rating = params["rating"]
        # review.user = @current_user
        edamater = Edamater.find_by(id: params[:id])
        # review.edamater = edamater
        if review.save
            redirect_to "/edamaters/#{edamater.id}", notice: "Review posted!"        
        else
            redirect_to "/edamaters/#{edamater.id}/reviews/#{review.id}/edit", alert: "Please fill out all review inputs"
        end 
    end

    def destroy 
        review = Review.find_by(id: params[:review_id])
        review.delete
        edamater = Edamater.find_by(id: params[:id])
        redirect_to "/edamaters/#{edamater.id}",  notice: 'Review deleted'
    end

end