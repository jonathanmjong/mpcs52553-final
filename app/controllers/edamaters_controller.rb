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
  end

  def destroy
    edamater = Edamater.find_by(id: params["id"])
    edamater.delete
    redirect_to "/edamaters",  notice: 'EdaMate profile deleted'
  end

end