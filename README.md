# Rails REST API application

Simple implementation using Twitter and OpenWeatherMap API. 

## Install

    $ git clone https://github.com/fss6/desafio-hexacta-api.git
    $ cd desafio-hexacta-api
    $ rename config/application.example.yml to config/application.yml
    $ assign your credentials in config/application.yml
    $ docker-compose build 
    
### Application credentials (config/application.yml)
    
* open_weather_map_api_key: OpenWeatherMap API credentials (for more details: https://openweathermap.org/)
* twitter_consumer_key: Twitter API credentials (for more details: https://developer.twitter.com/)
* twitter_consumer_secret: Twitter API credentials (for more details: https://developer.twitter.com/)
* twitter_access_token: Twitter API credentials (for more details: https://developer.twitter.com/)
* twitter_access_token_secret: Twitter API credentials (for more details: https://developer.twitter.com/)
* twitter_bearer_token: Twitter API credentials (for more details: https://developer.twitter.com/)   

## Run the app

    $ docker-compose up

# REST API

### Get current weather

`POST /weather?city=CITY_NAME` or `POST /preview?lat=LATITUDE&lon=LONGITUDE`

### Get weather forecast

`POST /preview?city=CITY_NAME` or `POST /preview?lat=LATITUDE&lon=LONGITUDE`

### Twitter preview message

`GET /preview?city=CITY_NAME` or `GET /preview?lat=LATITUDE&lon=LONGITUDE`

### Twitter send message

`POST /twitter?city=CITY_NAME` or `POST /twitter?lat=LATITUDE&lon=LONGITUDE`
