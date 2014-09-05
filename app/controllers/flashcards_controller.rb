class FlashcardsController < ApplicationController
  def index
    @flashcards = Flashcard.all
  end

  def new
    @flashcard = Flashcard.new
  end

  def show
    @flashcard = Flashcard.find(params[:id])
  end

  def edit
    @flashcard = Flashcard.find(params[:id])
  end

  def create
    @flashcard = Flashcard.new(flashcard_params)
    if @flashcard.save
      redirect_to profile_path(:card_set_id =>@flashcard.cardset_id)
    else
      redirect_to profile_path(:card_set_id =>@flashcard.cardset_id)
    end

  end

  def update
    @flashcard = Flashcard.find(params[:id])
    if @flashcard.update_attributes(flashcard_params)
      redirect_to profile_path #???
    else
      render :edit
    end
  end
  


  def destroy
    @flashcard = Flashcard.find(params[:id])
    @flashcard.destroy
    redirect_to profile_path(:card_set_id =>@flashcard.cardset_id)
  end
  protected

  def flashcard_params
    params.require(:flashcard).permit(
      :content, :title, :cardset_id
    )
  end


end
