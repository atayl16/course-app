 require 'rails_helper'
RSpec.describe "/roles", type: :request do
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
  #     Role.create! valid_attributes
  #     get roles_url
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe "GET /show" do
  #   it "renders a successful response" do
  #     role = Role.create! valid_attributes
  #     get role_url(role)
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe "GET /new" do
  #   it "renders a successful response" do
  #     get new_role_url
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe "GET /edit" do
  #   it "render a successful response" do
  #     role = Role.create! valid_attributes
  #     get edit_role_url(role)
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe "POST /create" do
  #   context "with valid parameters" do
  #     it "creates a new Role" do
  #       expect {
  #         post roles_url, params: { role: valid_attributes }
  #       }.to change(Role, :count).by(1)
  #     end
  #
  #     it "redirects to the created role" do
  #       post roles_url, params: { role: valid_attributes }
  #       expect(response).to redirect_to(role_url(Role.last))
  #     end
  #   end
  #
  #   context "with invalid parameters" do
  #     it "does not create a new Role" do
  #       expect {
  #         post roles_url, params: { role: invalid_attributes }
  #       }.to change(Role, :count).by(0)
  #     end
  #
  #     it "renders a successful response (i.e. to display the 'new' template)" do
  #       post roles_url, params: { role: invalid_attributes }
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
  #     it "updates the requested role" do
  #       role = Role.create! valid_attributes
  #       patch role_url(role), params: { role: new_attributes }
  #       role.reload
  #       skip("Add assertions for updated state")
  #     end
  #
  #     it "redirects to the role" do
  #       role = Role.create! valid_attributes
  #       patch role_url(role), params: { role: new_attributes }
  #       role.reload
  #       expect(response).to redirect_to(role_url(role))
  #     end
  #   end
  #
  #   context "with invalid parameters" do
  #     it "renders a successful response (i.e. to display the 'edit' template)" do
  #       role = Role.create! valid_attributes
  #       patch role_url(role), params: { role: invalid_attributes }
  #       expect(response).to be_successful
  #     end
  #   end
  # end
  #
  # describe "DELETE /destroy" do
  #   it "destroys the requested role" do
  #     role = Role.create! valid_attributes
  #     expect {
  #       delete role_url(role)
  #     }.to change(Role, :count).by(-1)
  #   end
  #
  #   it "redirects to the roles list" do
  #     role = Role.create! valid_attributes
  #     delete role_url(role)
  #     expect(response).to redirect_to(roles_url)
  #   end
  # end
end
