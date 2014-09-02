class UpvotesController < ApplicationController
  def new
    @upvote = Upvote.new(upvote_params)
  end

  def create
    @upvote = upvote_params[:type].constantize.new(:obj_id => upvote_params[:obj_id])
    if upvote_params[:type] == "AnswerUpvote"
      a = Answer.find(upvote_params[:obj_id].to_i)
      a.upvote_count += 1
    else
      a = Note.find(upvote_params[:obj_id].to_i)
      a.upvote_count += 1
    end
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
