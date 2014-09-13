class SessionsController < ApplicationController

  def new
  end

  # def create
  #   user = User.find_by(email: params[:email])
  #   if user && user.authenticate(params[:password])
  #     session[:user_id] = user.id
  #     redirect_to universities_path, notice: "Hey there, #{user.email}! "
  #   else
  #     flash.now[:alert] = "Uhh.. you fudged up the login, idiot"
  #     render :new
  #   end
  # end

  # def destroy
  #   session.clear[:user_id]
  #   redirect_to landing_index_path, notice: "Adios!"
  # end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      if params[:remember_me]
        cookies.permanent[:auth_token] = user.auth_token
      else
        cookies[:auth_token] = user.auth_token
      end
      redirect_to landing_index_path, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    cookies.delete(:auth_token)
    redirect_to landing_index_path, :notice => "Logged out!"
  end

  def failure
  end
end
