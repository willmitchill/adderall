class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.user_id = current_user.id
    @answer.question_id = params[:question_id]

    if @answer.save
      redirect_to university_course_path(params[:university_id], params[:course_id],notice: "Answer submitted successfully!")
    end
  end

  def destroy
    @upvote = Upvote.find(params[:id])
    @upvote.destroy
    redirect_to university_course_notes_path
  end

  protected

  def answer_params
    params.require(:answer).permit(
      :answer
    )
  end

end
