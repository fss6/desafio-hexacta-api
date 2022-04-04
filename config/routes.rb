Rails.application.routes.draw do 
  namespace :api do
    namespace :v1 do
      get 'weather', to: 'open_weather_map#weather'
      get 'forecast', to: 'open_weather_map#forecast'
    end    
  end
end
