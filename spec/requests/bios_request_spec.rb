require 'rails_helper'

RSpec.describe "Bios", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/bios/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/bios/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/bios/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
