class FeedbackController < ApplicationController
  def index
    @feedback = Feedback.all
    authorize @feedback
  end

  def show
  end

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.user = current_user

    if @feedback.save
      redirect_to "/", notice: "Your feedback was successfully submitted."
    else
      render "feedback/new"
    end
  end

  def destroy
    @feedback = Feedback.find(params[:id])
    authorize @feedback
    @feedback.destroy
    redirect_to "feedback/index", notice: "Feedback was successfully destroyed."
  end

  private

  def feedback_params
    params.require(:feedback).permit(:content, :email, :responded, :reviewed)
  end
end
