class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to universities_path, notice: "Hey there, #{user.email}! "
    else
      flash.now[:alert] = "Uhh.. you fudged up the login, idiot"
      render :new
    end
  end

  def destroy
    session.clear[:user_id]
    redirect_to landing_index_path, notice: "Adios!"
  end

  def failure
  end
end
