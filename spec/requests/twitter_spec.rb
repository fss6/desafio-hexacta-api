require 'rails_helper'

RSpec.describe "Twitter", type: :request do
  describe "Returns a successful response " do
    it "Using coordenates" do
      get "/api/v1/preview?lon=-2.15&lat=57"
      expect(response).to have_http_status(:success)
    end

    it "Using city name" do
      get "/api/v1/preview?city=Recife"
      expect(response).to have_http_status(:success)
    end
  end

  describe "Returns a internal server error" do

    it "Empty city name" do
      get "/api/v1/preview?city="
      expect(response).to have_http_status(:internal_server_error)
    end

    it "Only with latitude" do
      get "/api/v1/preview?lat=2"
      expect(response).to have_http_status(:internal_server_error)
    end
  end

end
