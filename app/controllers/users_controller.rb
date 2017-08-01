class UsersController < ApplicationController

  def new
  end

  def create
    if params['username'].blank? || params['email'].blank? || params['password'].blank?
        redirect_to '/user', alert: "Please check registration details"
        return
    end 
    user = User.new
    user.username = params['username']
    user.email = params['email']
    user.password = params['password']
    user.save
    redirect_to '/edamaters', notice: "Thanks for signing up!"
  end

  def index
  end

  def show
    @user = User.find_by(id: params["id"])

    if @user.present? && @user.id == session["user_id"]
      @orders = @user.orders
    else
      redirect_to root_url, notice: "Please recheck login EdaMater credentials"
    end
  end


end