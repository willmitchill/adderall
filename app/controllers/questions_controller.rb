class QuestionController < ApplicationController


  def new
    @quation = Question.new(question_params)
  end

  def create
    @question = Question.new
    @question.user_id = current_user.id
    @question.course_id = params[:course_id]
    course = Course.find(params[:course_id])

    note.save
    if @question.save
      redirect_to university_course_path(course.university, course)
    end
  end

  def destroy
    @upvote = Upvote.find(params[:id])
    @upvote.destroy
    redirect_to university_course_notes_path
  end

  protected

  def question_params

  end

end
