class UpvotesController < ApplicationController
  def new
    @upvote = Upvote.new(upvote_params)
  end

  def create
    @upvote = params[:type].constantize.new(upvote_params)
    @upvote.user_id = current_user.id
    if @upvote.save
      render json: @upvote
    end
  end

  def destroy
    @upvote = Upvote.find(params[:id])
    @upvote.destroy
    redirect_to university_course_notes_path
  end

  protected

  def upvote_params
    params.require(:upvote).permit(
      :obj_id, :type
    )
  end

end
