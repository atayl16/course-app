class LessonsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_lesson, only: [:show, :edit, :update, :destroy, :delete_video]

  def sort
    @course = Course.friendly.find(params[:course_id])
    lesson = Lesson.friendly.find(params[:lesson_id])
    authorize lesson, :edit?
    lesson.update(lesson_params)
    render body: nil
  end

  def delete_video
    authorize @lesson, :edit?
    @lesson.video.purge
    @lesson.video_thumbnail.purge
    redirect_to edit_course_lesson_path(@course, @lesson), notice: "Video successfully deleted!"
  end

  def show
    #authorize @lesson
    @chapters = @course.chapters.rank(:row_order).includes(:lessons, lessons: [:user_lessons])
    @comment = Comment.new
    @comments = @lesson.comments.order(created_at: :desc)
    if current_user
      current_user.view_lesson(@lesson)
    end
    @lessons = @lesson.chapter.lessons.rank(:row_order)
  end

  def new
    @lesson = Lesson.new
    @course = Course.friendly.find(params[:course_id])
    @chapter = Chapter.friendly.find(params[:chapter_id])
    @lesson.course_id = @course.id #for authorization
    @lesson.chapter_id = @chapter.id
    authorize @lesson
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @course = Course.friendly.find(params[:course_id])
    @lesson.course_id = @course.id
    @chapter = Chapter.friendly.find(params[:chapter_id])
    @lesson.chapter_id = @chapter.id

    authorize @lesson
    if @lesson.save
      redirect_to course_lesson_path(@course, @lesson), notice: "Lesson was successfully created."
    else
      render :new
    end
  end

  def edit
    authorize @lesson
  end

  def update
    authorize @lesson
    if @lesson.update(lesson_params)
      redirect_to course_lesson_path(@course, @lesson), notice: "Lesson was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    authorize @lesson
    @lesson.destroy
    redirect_to course_path(@course), notice: "Lesson was successfully destroyed."
  end

  private

  def set_lesson
    @course = Course.friendly.find(params[:course_id])
    if @chapter
      @chapter = Chapter.friendly.find(params[:chapter_id])
    end
    @lesson = Lesson.friendly.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:title, :content, :row_order_position, :video, :chapter_id)
  end
end
