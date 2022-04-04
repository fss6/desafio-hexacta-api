require 'rails_helper'

RSpec.describe "open_weather_map_controller", type: :request do
  describe "Returns a successful response " do
    it "Weather using coordenates" do
      get "/api/v1/weather?lon=-2.15&lat=57"
      expect(response).to have_http_status(:success)
    end

    it "Weather using city name" do
      get "/api/v1/weather?city=Recife"
      expect(response).to have_http_status(:success)
    end

    it "Forecast using coordenates" do
      get "/api/v1/forecast?lon=-2.15&lat=57"
      expect(response).to have_http_status(:success)
    end

    it "Forecast using city name" do
      get "/api/v1/forecast?city=Recife"
      expect(response).to have_http_status(:success)
    end
  end

  describe "Returns a internal server error" do

    it "Weather with empty city name" do
      get "/api/v1/weather?city="
      expect(response).to have_http_status(:internal_server_error)
    end

    it "Forecast only with latitude" do
      get "/api/v1/forecast?lat=2"
      expect(response).to have_http_status(:internal_server_error)
    end
  end

end
