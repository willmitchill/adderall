class NotesController < ApplicationController
  def index
    if params[:search]
      @notes = Note.search(params[:search]).order("created_at DESC")
    else
      @notes = Note.all
    end
  end

  def new
    @note = Note.new
  end

  def create
    @note = current_user.notes.new(note_params)
    # @note.user_id = current_user.id
    @note.course_id = params[:course_id]

    if @note.save
      redirect_to university_course_path(@note.course.university.id, @note.course.id, notice: "Note submitted successfully")
    else
      redirect_to university_course_path(@note.course.university.id, @note.course.id, notice: "Note not submitted successfully")

    end
  end

  def edit
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    @note.save
    redirect_to university_course_path(@note.course.university.id, @note.course.id)
  end

  def show
    @note = Note.find(params[:id])
    @course = Course.find(params[:course_id])
  end


  protected

  def note_params
    params.require(:note).permit(
      :note_file, :title
    )
  end
end
