class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create

    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to universities_path, notice: "Yo #{@user.firstname}, time to get you some A's!"
    else
      render :new , notice: "woops, try doing that again"
    end
  end

  def show
    @user = current_user
    @flashcard = Flashcard.all

  end

  protected

  def user_params
    params.require(:user).permit(:email, :firstname, :lastname, :password, :password_confirmation)

  end

  def destroy

  end
end
