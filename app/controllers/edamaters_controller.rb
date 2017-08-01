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


  def show
    @edamater = Edamater.find_by(id: params["id"])
  end

end