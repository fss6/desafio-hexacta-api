Rails.application.routes.draw do 
  namespace :api do
    namespace :v1 do
      post 'weather', to: 'open_weather_map#weather'
      post 'forecast', to: 'open_weather_map#forecast'
      post 'twitter', to: 'twitter#send_message'
      get 'preview', to: 'twitter#preview_message'
    end    
  end
end
