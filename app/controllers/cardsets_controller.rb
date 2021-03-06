class CardsetsController < ApplicationController
  def new
  end

  def create
    @cardset = current_user.cardsets.new(cardset_params)
    if @cardset.save
      redirect_to profile_path(:card_set_id =>@cardset.id)
    else
      redirect_to profile_path(:card_set_id =>@cardset.id)
    end
  end

  def update
  end

  def edit
  end

  def destroy
    @cardset = Cardset.find(params[:id])
    @cardset.destroy
    redirect_to profile_path
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
