require 'rails_helper'

RSpec.describe "Faculties", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/faculties/index"
      expect(response).to have_http_status(:success)
    end
  end

end
