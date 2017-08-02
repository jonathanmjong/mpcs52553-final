class EdamatersController < ApplicationController

  before_action :check_session

  def check_session
    @current_user = User.find_by(id: session[:user_id])
  end

  def index
    @edamaters = Edamater.all
  end

  def new
    @edamater = Edamater.new
  end

  def create
    edamater = Edamater.new
    edamater.name = params["name"]
    edamater.price = params["price"]
    edamater.image = params["image"]
    edamater.description = params["description"]
    edamater.user = @current_user
    edamater.save
    
    redirect_to "/edamaters", notice: "EdaMate profile created!"
  end

  def edit
    @edamater = Edamater.find_by(id: params[:id])
  end

  def update
    @edamater = Edamater.find_by(id: params["id"])
    @edamater.name = params["name"]
    @edamater.price = params["price"]
    @edamater.description = params["description"]
    @edamater.image = params["image"]
    @edamater.user = @current_user
    if @edamater.save
      redirect_to "/edamaters/#{@edamater.id}", notice: 'EdaMate profile successfully updated.'
    else
      redirect_to "/edamaters/#{@edamater.id}", alert: "Please check EdaMate profile inputs"
    end
  end
  
  def show
    @edamater = Edamater.find_by(id: params["id"])
    @average_rating_logistics = average_ratings(@edamater.reviews, "logistics")
    @average_rating_clarity = average_ratings(@edamater.reviews, "clarity")
    @average_rating_structure = average_ratings(@edamater.reviews, "structure")
    @average_rating_value = average_ratings(@edamater.reviews, "value")
  end

  def destroy
    edamater = Edamater.find_by(id: params["id"])
    edamater.delete
    redirect_to "/edamaters",  notice: 'EdaMate profile deleted'
  end

# Helper functions
  def average_ratings(reviews, review_type)
    rating_total = 0
    rating_count = 0
    # check all reviews
    for review in reviews
      # there are 4 review categories, check for which review type then divide by total number of rating_count
      rating_count = rating_count + 1
      if review_type == "logistics"
        rating_total = rating_total + review.rating_logistics
      elsif review_type == "clarity"
        rating_total = rating_total + review.rating_clarity
      elsif review_type == "structure"
        rating_total = rating_total + review.rating_structure
      elsif review_type == "value"
        rating_total = rating_total + review.rating_value
      end
      puts rating_total
      puts rating_count
    end
    # no reviews have been written
    if rating_count == 0
      return "No reviews" 
    else
      return (rating_total / rating_count)
    end
  end

end