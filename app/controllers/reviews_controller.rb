class ReviewsController < ApplicationController

    before_action :check_session

    def check_session
        if User.find_by(id: session[:user_id]).present?
            @current_user = User.find_by(id: session[:user_id])
        else
            @current_user = "Guest"
        end
    end

    def new
        @edamater = Edamater.find_by(id: params[:id])
    end

    def create
        review = Review.new
        review.text = params["text"]
        review.rating_logistics = params["rating_logistics"]
        review.rating_clarity = params["rating_clarity"]
        review.rating_structure = params["rating_structure"]
        review.rating_value = params["rating_value"]
        review.user = @current_user
        edamater = Edamater.find_by(id: params[:id])
        review.edamater = edamater
        if review.save
            redirect_to "/edamaters/#{edamater.id}", notice: "Review posted!"
        else
            redirect_to "/edamaters/#{edamater.id}/reviews/new", alert: "Please fill out all required fields"
        end
    end

    def edit
        @edamater = Edamater.find_by(id: params[:id])
        @review = Review.find_by(id: params[:review_id])
    end

    def update
        review = Review.find_by(id: params[:review_id])
        review.text = params["text"]
        review.rating_logistics = params["rating_logistics"]
        review.rating_clarity = params["rating_clarity"]
        review.rating_structure = params["rating_structure"]
        review.rating_value = params["rating_value"]
        # review.user = @current_user
        edamater = Edamater.find_by(id: params[:id])
        # review.edamater = edamater
        if review.save
            redirect_to "/edamaters/#{edamater.id}", notice: "Review Updated!"        
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