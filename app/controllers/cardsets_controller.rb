class CardsetsController < ApplicationController
  def new
  end

  def create
    @cardset = current_user.cardsets.new(cardset_params)
    if @cardset.save
      session[:cardset_id] = @cardset.id
      redirect_to profile_path  notice: "#{@cardset.name} was created successfully!"
    else
      redirect_to profile_path
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end

  protected

  def cardset_params
    params.require(:cardset).permit(
      :name
    )
  end
end
