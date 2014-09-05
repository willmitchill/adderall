class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.user_id = current_user.id
    @answer.question_id = params[:question_id]

    if @answer.save

      redirect_to university_course_question_path(params[:university_id], params[:course_id], params[:question_id], notice: "Answer submitted successfully!")



    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    @answer.save

    redirect_to university_course_question_path(@answer.question.course.university.id, @answer.question.course.id, @answer.question, @answer)
  end

  protected

  def answer_params
    params.require(:answer).permit(
      :answer
    )
  end

end
