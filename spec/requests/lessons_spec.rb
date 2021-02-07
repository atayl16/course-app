 require 'rails_helper'
RSpec.describe "/lessons", type: :request do
  # let(:valid_attributes) {
  #   skip("Add a hash of attributes valid for your model")
  # }
  #
  # let(:invalid_attributes) {
  #   skip("Add a hash of attributes invalid for your model")
  # }
  #
  # describe "GET /index" do
  #   it "renders a successful response" do
  #     Lesson.create! valid_attributes
  #     get lessons_url
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe "GET /show" do
  #   it "renders a successful response" do
  #     lesson = Lesson.create! valid_attributes
  #     get lesson_url(lesson)
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe "GET /new" do
  #   it "renders a successful response" do
  #     get new_lesson_url
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe "GET /edit" do
  #   it "render a successful response" do
  #     lesson = Lesson.create! valid_attributes
  #     get edit_lesson_url(lesson)
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe "POST /create" do
  #   context "with valid parameters" do
  #     it "creates a new Lesson" do
  #       expect {
  #         post lessons_url, params: { lesson: valid_attributes }
  #       }.to change(Lesson, :count).by(1)
  #     end
  #
  #     it "redirects to the created lesson" do
  #       post lessons_url, params: { lesson: valid_attributes }
  #       expect(response).to redirect_to(lesson_url(Lesson.last))
  #     end
  #   end
  #
  #   context "with invalid parameters" do
  #     it "does not create a new Lesson" do
  #       expect {
  #         post lessons_url, params: { lesson: invalid_attributes }
  #       }.to change(Lesson, :count).by(0)
  #     end
  #
  #     it "renders a successful response (i.e. to display the 'new' template)" do
  #       post lessons_url, params: { lesson: invalid_attributes }
  #       expect(response).to be_successful
  #     end
  #   end
  # end
  #
  # describe "PATCH /update" do
  #   context "with valid parameters" do
  #     let(:new_attributes) {
  #       skip("Add a hash of attributes valid for your model")
  #     }
  #
  #     it "updates the requested lesson" do
  #       lesson = Lesson.create! valid_attributes
  #       patch lesson_url(lesson), params: { lesson: new_attributes }
  #       lesson.reload
  #       skip("Add assertions for updated state")
  #     end
  #
  #     it "redirects to the lesson" do
  #       lesson = Lesson.create! valid_attributes
  #       patch lesson_url(lesson), params: { lesson: new_attributes }
  #       lesson.reload
  #       expect(response).to redirect_to(lesson_url(lesson))
  #     end
  #   end
  #
  #   context "with invalid parameters" do
  #     it "renders a successful response (i.e. to display the 'edit' template)" do
  #       lesson = Lesson.create! valid_attributes
  #       patch lesson_url(lesson), params: { lesson: invalid_attributes }
  #       expect(response).to be_successful
  #     end
  #   end
  # end
  #
  # describe "DELETE /destroy" do
  #   it "destroys the requested lesson" do
  #     lesson = Lesson.create! valid_attributes
  #     expect {
  #       delete lesson_url(lesson)
  #     }.to change(Lesson, :count).by(-1)
  #   end
  #
  #   it "redirects to the lessons list" do
  #     lesson = Lesson.create! valid_attributes
  #     delete lesson_url(lesson)
  #     expect(response).to redirect_to(lessons_url)
  #   end
  # end
end
