class LandingController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to universities_path, notice: "Yo #{@user.firstname}, time to get you some A's!"
    else
      redirect_to landing_index_path, notice: "Sign up failed, try again"
    end
  end

  def show
    @user = current_user
    @flashcards = Flashcard.all
    @flashcard = Flashcard.new
    if params[:card_set_id]
      @cardset = Cardset.find_by_id(params[:card_set_id].to_i)
      @flashcard = Flashcard.new(:cardset_id => params[:card_set_id]) if @cardset
    end
  end

  protected

  def user_params
    params.require(:user).permit(:username,:email, :firstname, :lastname, :password, :password_confirmation, :card_set_id)

  end
end
