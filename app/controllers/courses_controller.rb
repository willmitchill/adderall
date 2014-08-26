class CoursesController < ApplicationController
  def index
    @courses = Course.where(params[:university_id])
  end

  def show
    @course = Course.find(params[:id])

    @question = Question.new
    @answer = Answer.new
    @notes = @course.notes
    @note = @course.notes.build

  end

  def edit
  end

  def update
  end

  def new
    @course = Course.new(course_params)
  end

  def create
    @course = current_user.courses.new(course_params)

    @course.university_id = params[:university_id]
    if @course.save
      redirect_to university_course_path(@course.university, @course) notice: "Course submitted successfully"

    end
  end

  def destroy
  end

  protected

  def course_params
    params.require(:course).permit(
      :name, :course_number
    )
  end
end
