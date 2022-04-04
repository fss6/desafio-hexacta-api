API_KEY = ENV["open_weather_map_api_key"]
$openweathermap = OpenWeatherMap::API.new(API_KEY)