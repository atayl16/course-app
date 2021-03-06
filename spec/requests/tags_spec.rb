 require 'rails_helper'
RSpec.describe "/tags", type: :request do
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
  #     Tag.create! valid_attributes
  #     get tags_url
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe "GET /show" do
  #   it "renders a successful response" do
  #     tag = Tag.create! valid_attributes
  #     get tag_url(tag)
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe "GET /new" do
  #   it "renders a successful response" do
  #     get new_tag_url
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe "GET /edit" do
  #   it "render a successful response" do
  #     tag = Tag.create! valid_attributes
  #     get edit_tag_url(tag)
  #     expect(response).to be_successful
  #   end
  # end
  #
  # describe "POST /create" do
  #   context "with valid parameters" do
  #     it "creates a new Tag" do
  #       expect {
  #         post tags_url, params: { tag: valid_attributes }
  #       }.to change(Tag, :count).by(1)
  #     end
  #
  #     it "redirects to the created tag" do
  #       post tags_url, params: { tag: valid_attributes }
  #       expect(response).to redirect_to(tag_url(Tag.last))
  #     end
  #   end
  #
  #   context "with invalid parameters" do
  #     it "does not create a new Tag" do
  #       expect {
  #         post tags_url, params: { tag: invalid_attributes }
  #       }.to change(Tag, :count).by(0)
  #     end
  #
  #     it "renders a successful response (i.e. to display the 'new' template)" do
  #       post tags_url, params: { tag: invalid_attributes }
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
  #     it "updates the requested tag" do
  #       tag = Tag.create! valid_attributes
  #       patch tag_url(tag), params: { tag: new_attributes }
  #       tag.reload
  #       skip("Add assertions for updated state")
  #     end
  #
  #     it "redirects to the tag" do
  #       tag = Tag.create! valid_attributes
  #       patch tag_url(tag), params: { tag: new_attributes }
  #       tag.reload
  #       expect(response).to redirect_to(tag_url(tag))
  #     end
  #   end
  #
  #   context "with invalid parameters" do
  #     it "renders a successful response (i.e. to display the 'edit' template)" do
  #       tag = Tag.create! valid_attributes
  #       patch tag_url(tag), params: { tag: invalid_attributes }
  #       expect(response).to be_successful
  #     end
  #   end
  # end
  #
  # describe "DELETE /destroy" do
  #   it "destroys the requested tag" do
  #     tag = Tag.create! valid_attributes
  #     expect {
  #       delete tag_url(tag)
  #     }.to change(Tag, :count).by(-1)
  #   end
  #
  #   it "redirects to the tags list" do
  #     tag = Tag.create! valid_attributes
  #     delete tag_url(tag)
  #     expect(response).to redirect_to(tags_url)
  #   end
  # end
end
