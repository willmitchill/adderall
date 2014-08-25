class AnswersController < ApplicationController

  def new
    @answer = Answer.new(answer_params)
  end

  def create
    @answer = Answer.new
    @answer.user_id = current_user.id
    @answer.question_id = params[:note_id]
    note = Note.find(params[:note_id])
    note.upvote_count += 1
    note.save
    if @upvote.save
      redirect_to university_course_path(note.course.university, note.course)
    end
  end

  def destroy
    @upvote = Upvote.find(params[:id])
    @upvote.destroy
    redirect_to university_course_notes_path
  end

  protected

  def upvote_params
  end

end
