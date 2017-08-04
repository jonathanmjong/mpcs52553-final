class UsersController < ApplicationController

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
    redirect_to '/session/new', notice: "Thanks for signing up! Please login to post reviews."
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