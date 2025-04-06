require 'rails_helper'

RSpec.describe "Comments", type: :request do
  let(:project) { Project.create!(name: "Test Project", description: "Project description") }

  describe "POST /projects/:project_id/comments" do
    context "with valid parameters" do
      it "creates a new comment and responds with turbo_stream" do
        expect {
          post project_comments_path(project), params: {
            comment: {
              name: "Alice",
              comment: "Great project!"
            }
          }, headers: { "ACCEPT" => "text/vnd.turbo-stream.html" }
        }.to change(Comment, :count).by(1)

        expect(response.media_type).to eq("text/vnd.turbo-stream.html")
        expect(response).to have_http_status(:ok)
      end
    end

    context "with invalid parameters" do
      it "does not create a comment and re-renders the form" do
        expect {
          post project_comments_path(project), params: {
            comment: {
              name: "",
              comment: "good comment"
            }
          }, headers: { "ACCEPT" => "text/vnd.turbo-stream.html" }
        }.not_to change(Comment, :count)

        expect(response.media_type).to eq("text/vnd.turbo-stream.html")
        expect(response.body).to include("error")
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
