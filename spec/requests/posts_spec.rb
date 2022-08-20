require 'rails_helper'

RSpec.describe "Posts", type: :request do
  before do
    @post = FactoryBot.create(:post)
  end
  describe "GET /index" do
    it "returns http success" do
      get root_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get new_post_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show/:id" do
    it "returns http success" do
      get :show, params: { id: @post.id }
      expect(response).to have_http_status(:success)
    end
  end

end
