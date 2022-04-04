class Api::V1::TwitterController < ApplicationController

  def preview_message
    begin
      message = create_message()
      response = { twitter: message }
    rescue => e
      @status = :internal_server_error
      response = { error: e.message }
    end
    render json: response, status: @status
  end

  def send_message
    begin
      message = create_message()
      response = $twitter_client.update(message)
    rescue => e
      @status = :internal_server_error
      response = { error: e.message }
    end
    render json: response, status: @status
  end

  private
  def create_message
    current_weather = $openweathermap.current(@location)
    forecast = $openweathermap.forecast(@location)
    twitter = TwitterCreator.new(current_weather, forecast)
    twitter.message
  end
end
