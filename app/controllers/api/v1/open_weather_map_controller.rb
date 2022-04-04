class Api::V1::OpenWeatherMapController < ApplicationController
  before_action :set_status, :set_location

  def weather
    begin
      response = $openweathermap.current(@location)
    rescue => e
      @status = :internal_server_error
      response = { error: e.message }  
    end
    render json: response, status: @status
  end

  def forecast
    begin
      response = $openweathermap.forecast(@location)
    rescue => e
      @status = :internal_server_error
      response = { error: e.message }  
    end
    render json: response, status: @status
  end

  private

  def set_status
    @status = :ok
  end

  def set_location
    @location = "#empty"
    if params[:city].present?
      @location = params[:city]
    elsif params[:lon].present? && params[:lat].present?
      @location = [params[:lon], params[:lat]]
    end
  end
end