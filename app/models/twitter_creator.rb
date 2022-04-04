class TwitterCreator
  attr_reader :message
  
  def initialize(current_weather, forecast)
    @message = ""
    set_current_weather_message(current_weather)
    set_forecast_message(forecast)
  end

  private

  def set_current_weather_message(current_weather)
    city = current_weather.city.name
    temp = current_weather.weather_condition.temperature
    today = current_weather.weather_condition.time.strftime("%d/%m/%Y")
    description = current_weather.weather_condition.description
    @message << "#{today}, tempo atual em #{city}: "
    @message << "#{temp.to_i}°C, #{description}. "
  end

  def set_forecast_message(forecast)
    weather_conditions = forecast.weather_conditions
    averages = get_averages_weather_conditions(weather_conditions)
    
    @message << "Média para os próximos dias: "
    @message << averages.join(", ")
    @message << "."
  end

  def get_averages_weather_conditions(weather_conditions)
    averages = []
    verified_items = []
    verified_items.push(Time.now.strftime("%d/%m/%Y"))

    weather_conditions.each do |weather_condition|
      item_dt = Time.at(weather_condition.time).strftime("%d/%m/%Y")
      next if verified_items.include?(item_dt)
      temperatures = weather_conditions.select do |e| 
        Time.at(e.time).strftime("%d/%m/%Y") == item_dt
      end
      average = temperatures.sum { |t| t.temperature } / temperatures.size
      averages.push("#{average.to_i}°C em #{item_dt}")
      verified_items.push(item_dt)
    end
    averages
  end
end
