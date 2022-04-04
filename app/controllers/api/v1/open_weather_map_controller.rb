class Api::V1::OpenWeatherMapController < ApplicationController
  def weather
    begin
      response = $openweathermap.current(@location)
    rescue StandardError => e
      @status = :internal_server_error
      response = { error: e.message }
    end
    render json: response, status: @status
  end

  def forecast
    begin
      response = $openweathermap.forecast(@location)
    rescue StandardError => e
      @status = :internal_server_error
      response = { error: e.message }
    end
    render json: response, status: @status
  end
end
