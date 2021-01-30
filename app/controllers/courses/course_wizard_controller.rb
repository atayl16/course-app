class Courses::CourseWizardController < ApplicationController
  include Wicked::Wizard
  before_action :set_progress, only: [:show, :update]
  before_action :set_course, only: [:show, :update, :finish_wizard_path]

  steps :landing_page, :language, :level, :chapters, :publish

  def show
    authorize @course, :edit?
    case step
    when :landing_page
      @tags = Tag.all
    when :language
    when :level
    when :chapters
      unless @course.chapters.any?
        @course.chapters.build
      end
    when :publish
    end
    render_wizard
  end

  def update
    authorize @course, :edit?
    case step
    when :landing_page
      @tags = Tag.all
    when :language
    when :level
    when :chapters
      # unless @course.chapters.any? # chapter title and content validation fires only if this line is present
      #  @course.chapters.build
      # end
    when :publish
    end
    @course.update_attributes(course_params)
    render_wizard @course
  end

  def finish_wizard_path
    authorize @course, :edit?
    # courses_path
    course_path(@course)
  end

  private

  def set_progress
    @progress = if wizard_steps.any? && wizard_steps.index(step).present?
      ((wizard_steps.index(step) + 1).to_d / wizard_steps.count.to_d) * 100
    else
      0
    end
  end

  def set_course
    @course = Course.friendly.find params[:course_id]
  end

  def course_params
    params.require(:course).permit(
      :title, :avatar, :short_description, :description,
      :language, :level,
      :published,
      tag_ids: [],
      chapters_attributes: [:id, :title, :_destroy])
  end
end
