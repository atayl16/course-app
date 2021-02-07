 require 'rails_helper'
RSpec.describe "/courses", type: :request do
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
  #     Course.create! valid_attributes
  #     get courses_url
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe "GET /show" do
  #   it "renders a successful response" do
  #     course = Course.create! valid_attributes
  #     get course_url(course)
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe "GET /new" do
  #   it "renders a successful response" do
  #     get new_course_url
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe "GET /edit" do
  #   it "render a successful response" do
  #     course = Course.create! valid_attributes
  #     get edit_course_url(course)
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe "POST /create" do
  #   context "with valid parameters" do
  #     it "creates a new Course" do
  #       expect {
  #         post courses_url, params: { course: valid_attributes }
  #       }.to change(Course, :count).by(1)
  #     end
  #
  #     it "redirects to the created course" do
  #       post courses_url, params: { course: valid_attributes }
  #       expect(response).to redirect_to(course_url(Course.last))
  #     end
  #   end
  #
  #   context "with invalid parameters" do
  #     it "does not create a new Course" do
  #       expect {
  #         post courses_url, params: { course: invalid_attributes }
  #       }.to change(Course, :count).by(0)
  #     end
  #
  #     it "renders a successful response (i.e. to display the 'new' template)" do
  #       post courses_url, params: { course: invalid_attributes }
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
  #     it "updates the requested course" do
  #       course = Course.create! valid_attributes
  #       patch course_url(course), params: { course: new_attributes }
  #       course.reload
  #       skip("Add assertions for updated state")
  #     end
  #
  #     it "redirects to the course" do
  #       course = Course.create! valid_attributes
  #       patch course_url(course), params: { course: new_attributes }
  #       course.reload
  #       expect(response).to redirect_to(course_url(course))
  #     end
  #   end
  #
  #   context "with invalid parameters" do
  #     it "renders a successful response (i.e. to display the 'edit' template)" do
  #       course = Course.create! valid_attributes
  #       patch course_url(course), params: { course: invalid_attributes }
  #       expect(response).to be_successful
  #     end
  #   end
  # end
  #
  # describe "DELETE /destroy" do
  #   it "destroys the requested course" do
  #     course = Course.create! valid_attributes
  #     expect {
  #       delete course_url(course)
  #     }.to change(Course, :count).by(-1)
  #   end
  #
  #   it "redirects to the courses list" do
  #     course = Course.create! valid_attributes
  #     delete course_url(course)
  #     expect(response).to redirect_to(courses_url)
  #   end
  # end
end
