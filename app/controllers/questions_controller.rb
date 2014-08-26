class QuestionsController < ApplicationController


  def new
    @question = Question.new(question_params)
  end

  def create
    @question = Question.new(question_params)
    @question.user_id = current_user.id
    @question.course_id = params[:course_id]

    if @question.save
      redirect_to university_course_path(@question.course.university.id, @question.course.id)
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to university_course_notes_path
  end

  protected

  def question_params
    params.require(:question).permit(
      :question
    )
  end

end
